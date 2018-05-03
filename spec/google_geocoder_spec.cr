require "./spec_helper"

describe Geocoder::GoogleGeocoder do
  Spec.before_each &->WebMock.reset

  it "returns address" do
    WebMock.stub(:any, "https://maps.googleapis.com/maps/api/geocode/json?address=1200%20S.%20College%20Ave%2C%20Fort%20Collins%2C%20CO&key=bogus_google_api_key").to_return(status: 200, body: SUCCESS)

    google_key = "bogus_google_api_key"
    res = Geocoder::GoogleGeocoder.new(google_key).geocode("1200 S. College Ave, Fort Collins, CO")
    res.success.should eq(true)
    res.lat.should eq(40.5716709)
    res.lng.should eq(-105.0766218)
    res.address.should eq("1200 S College Ave, Fort Collins, CO 80524, USA")
  end

  it "is a bad address" do
    google_key = "bogus_google_api_key"
    WebMock.stub(:get, "https://maps.googleapis.com/maps/api/geocode/json?address=asdfasdfasf&key=bogus_google_api_key")
           .to_return(body: BAD_REQUEST)
    res = Geocoder::GoogleGeocoder.new(google_key).geocode("asdfasdfasf")
    res.success.should eq(false)
  end

  it "returns multiple addresses" do
    google_key = "bogus_google_api_key"
    WebMock.stub(:get, "https://maps.googleapis.com/maps/api/geocode/json?address=9890%20W%20sycamore%20St&key=bogus_google_api_key")
           .to_return(body: MULTIPLE_RESULTS)
    res = Geocoder::GoogleGeocoder.new(google_key).geocode("9890 W sycamore St")
    res.success.should eq(true)
    res.all_results.size.should eq(2)

    r0 = res.all_results[0]
    r0.address.should eq("9890 W Sycamore St, Columbus Grove, OH 45830, USA")
    r0.lat.should eq(40.9238664)
    r0.lng.should eq(-84.0673821)

    r1 = res.all_results[1]
    r1.address.should eq("9890 W Sycamore St, Coatesville, IN 46121, USA")
    r1.lat.should eq(39.6898434)
    r1.lng.should eq(-86.6145779)
  end
end
