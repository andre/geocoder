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
puts res.address
puts res.lat
puts res.lng

```

### Check the `success` method (returns true | false)
```crystal
puts res.success
```

### Multiple results are accessed via the `all_results` method:

```crystal
res = g.geocode("100 Main st")
all = res.all_results
puts all[0].address
puts all[1].address
```

## Contributors

- [Andre Lewis](https://github.com/andre)  - creator

[![Build Status](https://travis-ci.org/andre/geocoder.svg?branch=master)](https://travis-ci.org/andre/geocoder)
