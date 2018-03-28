require_relative("it6")

# An hash is set with a default list of countries
countries = {"Liechtenstein" => {"capital" => "Vaduz",        "population" => 5248},
             "Mauritius"     => {"capital" => "Port Louis",   "population" => 147251},
             "Bhutan"        => {"capital" => "Thimphu",      "population" => 101259},
             "Honduras"      => {"capital" => "Tegucigalpa",  "population" => 735982},
             "Congo"         => {"capital" => "Brazzaville",  "population" => 1088044},
             "Fiji"          => {"capital" => "Suva",         "population" => 84410},
             "Cape Verde"    => {"capital" => "Praia",        "population" => 125464},
             "Vanuatu"       => {"capital" => "Port Vila",    "population" => 38000},
             "Gambia"        => {"capital" => "Banjul",       "population" => 34828},
             "Denmark"       => {"capital" => "Copenhagen",   "population" => 1231166},
             "Burundi"       => {"capital" => "Bujumbura",    "population" => 384461},
             "Ethiopia"      => {"capital" => "Addis Ababa",  "population" => 3040740}
           }

# 3 new countries are added
add_new_country(countries, "Bahamas",      {"capital" => "Nassau",       "population" => 248948})
add_new_country(countries, "Sierra Leone", {"capital" => "Freetown",     "population" => 1070200})
add_new_country(countries, "Armenia",      {"capital" => "Yerevan",      "population" => 1121900})

# The hash content is printed out
# puts countries

puts sort_countries_by_population_desc(countries)
