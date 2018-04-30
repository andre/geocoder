# geocoder

Simplest possible geocoder. Uses Google's Geocoding API, which you can get for free to start.

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

- [andre](https://github.com/andre) Andre Lewis - creator, maintainer
