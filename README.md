# Geocoder (in Crystal)

Simplest possible geocoder shard for Crystal. Uses Google's Geocoding API, which you can get for free to start.

Get your API here: https://developers.google.com/maps/documentation/geocoding/get-api-key

## Installation

Add this to your application's `shard.yml`:

```yaml
dependencies:
  geocoder:
    github: andre/geocoder
```

## Usage

```crystal
require "geocoder"

g = Geocoder::GoogleGeocoder.new(YOUR_GOOGLE_API_KEY")
res = g.geocode("100 Main st, Denver, CO")
puts res.lat
  ... 
puts res.lng
  ...
puts res.address
  ...
```


## Contributors

- [Andre Lewis](https://github.com/andre)  - creator
