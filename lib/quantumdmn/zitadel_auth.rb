require 'jwt'
require 'json'
require 'openssl'
require 'net/http'
require 'uri'
require 'securerandom'

module Quantumdmn
  class ZitadelTokenProvider
    def initialize(key_path, issuer, project_id = nil)
      @key_data = JSON.parse(File.read(key_path))
      @issuer = issuer
      @project_id = project_id
      @token = nil
      @expiry = Time.at(0)
    end

    def call
      # Matches Proc interface for token_provider
      token
    end

    def token
      if @token && Time.now < @expiry - 60
        return @token
      end
      fetch_token
    end

    private

    def fetch_token
      now = Time.now.to_i
      payload = {
        iss: @key_data['userId'],
        sub: @key_data['userId'],
        aud: @issuer,
        exp: now + 3600,
        iat: now,
        jti: SecureRandom.uuid
      }

      private_key = OpenSSL::PKey::RSA.new(@key_data['key'])
      jwt = JWT.encode(payload, private_key, 'RS256', { kid: @key_data['keyId'] })

      # build scopes
      scopes = [
        'openid',
        'profile',
        'urn:zitadel:iam:user:resourceowner',
        'urn:zitadel:iam:org:projects:roles'
      ]
      
      # add project-specific scopes if project_id provided
      if @project_id
        scopes << "urn:zitadel:iam:org:project:id:#{@project_id}:aud"
      end

      uri = URI("#{@issuer}/oauth/v2/token")
      res = Net::HTTP.post_form(uri, 
        grant_type: 'urn:ietf:params:oauth:grant-type:jwt-bearer',
        scope: scopes.join(' '),
        assertion: jwt
      )

      if res.is_a?(Net::HTTPSuccess)
        data = JSON.parse(res.body)
        @token = data['access_token']
        @expiry = Time.now + data['expires_in']
        @token
      else
        raise "Failed to get token: #{res.code} #{res.body}"
      end
    end
  end
end
