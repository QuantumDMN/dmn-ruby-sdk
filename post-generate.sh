#!/bin/bash
# post-generation script for Ruby SDK
# adds custom class requires to the generated quantumdmn.rb file

set -e

SDK_DIR="/mnt/fast/projects/personal/dmn/dmn-ruby-sdk"

echo "Adding custom classes to Ruby SDK..."

# add custom class requires after the configuration require
if ! grep -q "require 'quantumdmn/dmn_engine'" "$SDK_DIR/lib/quantumdmn.rb"; then
    echo "Adding custom class requires..."
    sed -i "/require 'quantumdmn\/configuration'/a\\
\\
# custom classes\\
require 'quantumdmn/zitadel_auth'\\
require 'quantumdmn/dmn_engine'" "$SDK_DIR/lib/quantumdmn.rb"
fi

echo "Ruby SDK post-generation complete!"
