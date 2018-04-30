require "./geocoder/*"
require "json"
require "uri"
require "http/client"

module Geocoder
  class GoogleGeocoder

    def initialize(api_key : String)
      @api_key = api_key
    end

    def geocode(address)
      encoded_address = URI.escape(address)
      url = "https://maps.googleapis.com/maps/api/geocode/json?address=#{encoded_address}&key=#{@api_key}"
      begin
        response = HTTP::Client.get(url)
        google_res = JSON.parse(response.body)   
        if google_res["results"].size > 0
          all_results = google_res["results"].map do |one_result| 
            google_address = one_result["formatted_address"]
            ll = one_result["geometry"]["location"]
            Result.new(true, lat: ll["lat"].as_f, lng: ll["lng"].as_f, address: google_address.as_s)
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

  class Result
    getter success : Bool
    getter lat : Float64
    getter lng : Float64
    getter address : String
    getter all_results 

    def initialize(success, lat = 0.0 , lng = 0.0, address = "")
      @success = success
      @lat = lat
      @lng = lng
      @address = address
      @all_results = [] of Result
    end

    def all_results=(array_of_results)
      @all_results=array_of_results
    end    

  end
end
