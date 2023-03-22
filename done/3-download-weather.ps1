
$ErrorActionPreference = "Stop"

# download weather for location, parse out details
# api docs: https://www.weather.gov/documentation/services-web-api
# SLC Airport: 40.771583, -111.979543
# https://api.weather.gov/points/40.7716,-111.9795

echo "Weather forecast for Salt Lake City Airport:"
$json = Invoke-WebRequest -Uri "https://api.weather.gov/gridpoints/SLC/96,175/forecast" | ConvertFrom-Json
$period = $json.properties.periods[0]

echo "$($period.startTime): $($period.temperature)$($period.temperatureUnit), $($period.shortForecast)"
