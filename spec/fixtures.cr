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