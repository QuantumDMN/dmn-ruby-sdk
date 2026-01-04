# Quantumdmn::OverviewResponseStats

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total_requests** | **Integer** |  | [optional] |
| **total_credits** | **Integer** |  | [optional] |
| **requests_trend** | [**Array&lt;DailyStat&gt;**](DailyStat.md) |  | [optional] |
| **credits_trend** | [**Array&lt;DailyStat&gt;**](DailyStat.md) |  | [optional] |
| **kpi_trends** | [**Array&lt;KpiTrend&gt;**](KpiTrend.md) |  | [optional] |

## Example

```ruby
require 'quantumdmn'

instance = Quantumdmn::OverviewResponseStats.new(
  total_requests: null,
  total_credits: null,
  requests_trend: null,
  credits_trend: null,
  kpi_trends: null
)
```

