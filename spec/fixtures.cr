SUCCESS = <<-EOS
{
   "results" : [
      {
         "address_components" : [
            {
               "long_name" : "1200",
               "short_name" : "1200",
               "types" : [ "street_number" ]
            },
            {
               "long_name" : "South College Avenue",
               "short_name" : "S College Ave",
               "types" : [ "route" ]
            },
            {
               "long_name" : "Historic Fort Collins High School",
               "short_name" : "Historic Fort Collins High School",
               "types" : [ "neighborhood", "political" ]
            },
            {
               "long_name" : "Fort Collins",
               "short_name" : "Fort Collins",
               "types" : [ "locality", "political" ]
            },
            {
               "long_name" : "Larimer County",
               "short_name" : "Larimer County",
               "types" : [ "administrative_area_level_2", "political" ]
            },
            {
               "long_name" : "Colorado",
               "short_name" : "CO",
               "types" : [ "administrative_area_level_1", "political" ]
            },
            {
               "long_name" : "United States",
               "short_name" : "US",
               "types" : [ "country", "political" ]
            },
            {
               "long_name" : "80524",
               "short_name" : "80524",
               "types" : [ "postal_code" ]
            }
         ],
         "formatted_address" : "1200 S College Ave, Fort Collins, CO 80524, USA",
         "geometry" : {
            "bounds" : {
               "northeast" : {
                  "lat" : 40.5717671,
                  "lng" : -105.076486
               },
               "southwest" : {
                  "lat" : 40.5715757,
                  "lng" : -105.0768173
               }
            },
            "location" : {
               "lat" : 40.5716709,
               "lng" : -105.0766218
            },
            "location_type" : "ROOFTOP",
            "viewport" : {
               "northeast" : {
                  "lat" : 40.5730203802915,
                  "lng" : -105.0753026697085
               },
               "southwest" : {
                  "lat" : 40.5703224197085,
                  "lng" : -105.0780006302915
               }
            }
         },
         "place_id" : "ChIJVWhDL_9KaYcRu2C9u3jAJrs",
         "types" : [ "premise" ]
      }
   ],
   "status" : "OK"
}
EOS

BAD_REQUEST = <<-EOS
{
   "results" : [],
   "status" : "ZERO_RESULTS"
}
EOS

MULTIPLE_RESULTS = <<-EOS
{
   "results" : [
      {
         "address_components" : [
            {
               "long_name" : "9890",
               "short_name" : "9890",
               "types" : [ "street_number" ]
            },
            {
               "long_name" : "West Sycamore Street",
               "short_name" : "W Sycamore St",
               "types" : [ "route" ]
            },
            {
               "long_name" : "Columbus Grove",
               "short_name" : "Columbus Grove",
               "types" : [ "locality", "political" ]
            },
            {
               "long_name" : "Pleasant Township",
               "short_name" : "Pleasant Township",
               "types" : [ "administrative_area_level_3", "political" ]
            },
            {
               "long_name" : "Putnam County",
               "short_name" : "Putnam County",
               "types" : [ "administrative_area_level_2", "political" ]
            },
            {
               "long_name" : "Ohio",
               "short_name" : "OH",
               "types" : [ "administrative_area_level_1", "political" ]
            },
            {
               "long_name" : "United States",
               "short_name" : "US",
               "types" : [ "country", "political" ]
            },
            {
               "long_name" : "45830",
               "short_name" : "45830",
               "types" : [ "postal_code" ]
            }
         ],
         "formatted_address" : "9890 W Sycamore St, Columbus Grove, OH 45830, USA",
         "geometry" : {
            "location" : {
               "lat" : 40.9238664,
               "lng" : -84.0673821
            },
            "location_type" : "RANGE_INTERPOLATED",
            "viewport" : {
               "northeast" : {
                  "lat" : 40.9252153802915,
                  "lng" : -84.06603311970849
               },
               "southwest" : {
                  "lat" : 40.92251741970851,
                  "lng" : -84.06873108029151
               }
            }
         },
         "partial_match" : true,
         "place_id" : "EjE5ODkwIFcgU3ljYW1vcmUgU3QsIENvbHVtYnVzIEdyb3ZlLCBPSCA0NTgzMCwgVVNBIhsSGQoUChIJA7Cxtq2RPogRoCa8RYom0vAQok0",
         "types" : [ "street_address" ]
      },
      {
         "address_components" : [
            {
               "long_name" : "9890",
               "short_name" : "9890",
               "types" : [ "street_number" ]
            },
            {
               "long_name" : "West Sycamore Street",
               "short_name" : "W Sycamore St",
               "types" : [ "route" ]
            },
            {
               "long_name" : "Coatesville",
               "short_name" : "Coatesville",
               "types" : [ "locality", "political" ]
            },
            {
               "long_name" : "Clay Township",
               "short_name" : "Clay Township",
               "types" : [ "administrative_area_level_3", "political" ]
            },
            {
               "long_name" : "Hendricks County",
               "short_name" : "Hendricks County",
               "types" : [ "administrative_area_level_2", "political" ]
            },
            {
               "long_name" : "Indiana",
               "short_name" : "IN",
               "types" : [ "administrative_area_level_1", "political" ]
            },
            {
               "long_name" : "United States",
               "short_name" : "US",
               "types" : [ "country", "political" ]
            },
            {
               "long_name" : "46121",
               "short_name" : "46121",
               "types" : [ "postal_code" ]
            }
         ],
         "formatted_address" : "9890 W Sycamore St, Coatesville, IN 46121, USA",
         "geometry" : {
            "location" : {
               "lat" : 39.6898434,
               "lng" : -86.6145779
            },
            "location_type" : "RANGE_INTERPOLATED",
            "viewport" : {
               "northeast" : {
                  "lat" : 39.6911923802915,
                  "lng" : -86.6132289197085
               },
               "southwest" : {
                  "lat" : 39.6884944197085,
                  "lng" : -86.61592688029151
               }
            }
         },
         "partial_match" : true,
         "place_id" : "Ei45ODkwIFcgU3ljYW1vcmUgU3QsIENvYXRlc3ZpbGxlLCBJTiA0NjEyMSwgVVNBIhsSGQoUChIJqX0oGyzHbIgRGq0HkGHqIFgQok0",
         "types" : [ "street_address" ]
      }
   ],
   "status" : "OK"
}
EOS

NOMINATIM_SUCCESS=<<-EOS
[{"place_id":"187580562","licence":"Data © OpenStreetMap contributors, ODbL 1.0. https:\/\/osm.org\/copyright","osm_type":"way","osm_id":"320074661","boundingbox":["40.57193","40.57203","-105.076904","-105.076804"],"lat":"40.57198","lon":"-105.076854","display_name":"1200, South College Avenue, Meadow Lark Heights, Fort Collins, Larimer County, Colorado, 80524, United States of America","class":"place","type":"house","importance":0.71025,"address":{"house_number":"1200","road":"South College Avenue","neighbourhood":"Meadow Lark Heights","city":"Fort Collins","county":"Larimer County","state":"Colorado","postcode":"80524","country":"United States of America","country_code":"us"}},{"place_id":"115261939","licence":"Data © OpenStreetMap contributors, ODbL 1.0. https:\/\/osm.org\/copyright","osm_type":"way","osm_id":"186713472","boundingbox":["40.5432718","40.5457814","-105.0771687","-105.0771553"],"lat":"40.54545","lon":"-105.077165","display_name":"South College Avenue, Warren Farms, Fort Collins, Larimer County, Colorado, 80525-2560, United States of America","class":"highway","type":"primary","importance":0.625,"address":{"road":"South College Avenue","neighbourhood":"Warren Farms","city":"Fort Collins","county":"Larimer County","state":"Colorado","postcode":"80525-2560","country":"United States of America","country_code":"us"}},{"place_id":"106409758","licence":"Data © OpenStreetMap contributors, ODbL 1.0. https:\/\/osm.org\/copyright","osm_type":"way","osm_id":"160696049","boundingbox":["40.5561757","40.5563173","-105.077144","-105.0769641"],"lat":"40.5561757","lon":"-105.0769641","display_name":"South College Avenue, Meadow Lark Heights, Fort Collins, Larimer County, Colorado, 80525-1725, United States of America","class":"highway","type":"primary","importance":0.625,"address":{"road":"South College Avenue","neighbourhood":"Meadow Lark Heights","city":"Fort Collins","county":"Larimer County","state":"Colorado","postcode":"80525-1725","country":"United States of America","country_code":"us"}},{"place_id":"142522531","licence":"Data © OpenStreetMap contributors, ODbL 1.0. https:\/\/osm.org\/copyright","osm_type":"way","osm_id":"320617994","boundingbox":["40.5525224","40.5526218","-105.076998","-105.0769955"],"lat":"40.5526218","lon":"-105.076998","display_name":"South College Avenue, Meadow Lark Heights, Fort Collins, Larimer County, Colorado, 80525-2137, United States of America","class":"highway","type":"primary","importance":0.625,"address":{"road":"South College Avenue","neighbourhood":"Meadow Lark Heights","city":"Fort Collins","county":"Larimer County","state":"Colorado","postcode":"80525-2137","country":"United States of America","country_code":"us"}},{"place_id":"112557302","licence":"Data © OpenStreetMap contributors, ODbL 1.0. https:\/\/osm.org\/copyright","osm_type":"way","osm_id":"186713474","boundingbox":["40.5236262","40.5432718","-105.0772102","-105.0771444"],"lat":"40.5332595","lon":"-105.0771852","display_name":"South College Avenue, Fort Collins Marketplace, Fort Collins, Larimer County, Colorado, 80525-0017, United States of America","class":"highway","type":"primary","importance":0.625,"address":{"road":"South College Avenue","retail":"Fort Collins Marketplace","city":"Fort Collins","county":"Larimer County","state":"Colorado","postcode":"80525-0017","country":"United States of America","country_code":"us"}},{"place_id":"116631792","licence":"Data © OpenStreetMap contributors, ODbL 1.0. https:\/\/osm.org\/copyright","osm_type":"way","osm_id":"194186257","boundingbox":["40.5457808","40.5525224","-105.0769967","-105.076959"],"lat":"40.5493825","lon":"-105.0769616","display_name":"South College Avenue, Meadow Lark Heights, Fort Collins, Larimer County, Colorado, 80525-2691, United States of America","class":"highway","type":"primary","importance":0.625,"address":{"road":"South College Avenue","neighbourhood":"Meadow Lark Heights","city":"Fort Collins","county":"Larimer County","state":"Colorado","postcode":"80525-2691","country":"United States of America","country_code":"us"}},{"place_id":"100398451","licence":"Data © OpenStreetMap contributors, ODbL 1.0. https:\/\/osm.org\/copyright","osm_type":"way","osm_id":"134552309","boundingbox":["40.5174779","40.5212968","-105.077204","-105.0771292"],"lat":"40.519593","lon":"-105.07716","display_name":"South College Avenue, Fairway Estates, Fort Collins, Larimer County, Colorado, 80525-3741, United States of America","class":"highway","type":"primary","importance":0.625,"address":{"road":"South College Avenue","neighbourhood":"Fairway Estates","city":"Fort Collins","county":"Larimer County","state":"Colorado","postcode":"80525-3741","country":"United States of America","country_code":"us"}},{"place_id":"160837050","licence":"Data © OpenStreetMap contributors, ODbL 1.0. https:\/\/osm.org\/copyright","osm_type":"way","osm_id":"404425381","boundingbox":["40.477695","40.514618","-105.077456","-105.077263"],"lat":"40.496177","lon":"-105.077403","display_name":"South College Avenue, Ridgewood Hills, Fort Collins, Larimer County, Colorado, 80525-3853, United States of America","class":"highway","type":"primary","importance":0.625,"address":{"road":"South College Avenue","neighbourhood":"Ridgewood Hills","city":"Fort Collins","county":"Larimer County","state":"Colorado","postcode":"80525-3853","country":"United States of America","country_code":"us"}},{"place_id":"103850607","licence":"Data © OpenStreetMap contributors, ODbL 1.0. https:\/\/osm.org\/copyright","osm_type":"way","osm_id":"140486412","boundingbox":["40.5236137","40.5400592","-105.0770063","-105.0769635"],"lat":"40.5317422","lon":"-105.0769893","display_name":"South College Avenue, Fairway Estates, Fort Collins, Larimer County, Colorado, 80525-0017, United States of America","class":"highway","type":"primary","importance":0.625,"address":{"road":"South College Avenue","neighbourhood":"Fairway Estates","city":"Fort Collins","county":"Larimer County","state":"Colorado","postcode":"80525-0017","country":"United States of America","country_code":"us"}},{"place_id":"115040559","licence":"Data © OpenStreetMap contributors, ODbL 1.0. https:\/\/osm.org\/copyright","osm_type":"way","osm_id":"186713491","boundingbox":["40.5574764","40.557592","-105.0771266","-105.077123"],"lat":"40.5574764","lon":"-105.0771266","display_name":"South College Avenue, Meadow Lark Heights, Fort Collins, Larimer County, Colorado, 80525-0001, United States of America","class":"highway","type":"primary","importance":0.625,"address":{"road":"South College Avenue","neighbourhood":"Meadow Lark Heights","city":"Fort Collins","county":"Larimer County","state":"Colorado","postcode":"80525-0001","country":"United States of America","country_code":"us"}}]
EOS

NOMINATIM_BAD_REQUEST=<<-EOS
[]
EOS