require "./result"

# Note the usage policy: https://operations.osmfoundation.org/policies/nominatim/ including:
# * hard max of 1 query per second
# * don't use it for things like as-you-type lookup
# * cache your results locally for reuse
module Geocoder
  class NominatimGeocoder
    def initialize()
    end

    def geocode(address)
      encoded_address = URI.escape(address)
      url = "https://nominatim.openstreetmap.org/?format=json&limit=10&addressdetails=1&q=#{encoded_address}"
      begin
        response = HTTP::Client.get(url)
        raw_res = JSON.parse(response.body)
        if raw_res.size > 0
          all_results = raw_res.map do |one_result|
            full_address = one_result["display_name"]
            Result.new(true, lat: one_result["lat"].as_s.to_f, lng: one_result["lon"].as_s.to_f, address: full_address.as_s)
          end
        else
          all_results = [Result.new(false)]
        end
      rescue ex
        all_results = [Result.new(false)]
      end
      res = all_results.first
      res.all_results = all_results
      res
    end
  end
end
