module Geocoder
  class Result
    getter success : Bool
    getter lat : Float64
    getter lng : Float64
    getter address : String
    getter all_results

    def initialize(success, lat = 0.0, lng = 0.0, address = "")
      @success = success
      @lat = lat
      @lng = lng
      @address = address
      @all_results = [] of Result
    end

    def all_results=(array_of_results)
      @all_results = array_of_results
    end
  end
end
