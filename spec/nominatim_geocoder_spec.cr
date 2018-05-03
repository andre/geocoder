require "./spec_helper"

describe Geocoder::NominatimGeocoder do
  Spec.before_each &->WebMock.reset

  it "returns address" do
    WebMock.stub(:any, "https://nominatim.openstreetmap.org/?format=json&limit=10&addressdetails=1&q=1200%20S.%20College%20Ave%2C%20Fort%20Collins%2C%20CO").to_return(status: 200, body: NOMINATIM_SUCCESS)

    res = Geocoder::NominatimGeocoder.new().geocode("1200 S. College Ave, Fort Collins, CO")
    res.success.should eq(true)
    res.lat.should eq(40.57198)
    res.lng.should eq(-105.076854)
    res.address.should eq("1200, South College Avenue, Meadow Lark Heights, Fort Collins, Larimer County, Colorado, 80524, United States of America")
  end

  it "is a bad address" do
    WebMock.stub(:get, "https://nominatim.openstreetmap.org/?format=json&limit=10&addressdetails=1&q=asdfasdfasf")
           .to_return(body: NOMINATIM_BAD_REQUEST)
    res = Geocoder::NominatimGeocoder.new().geocode("asdfasdfasf")
    res.success.should eq(false)
  end

  # TODO: test multiple addresses
end