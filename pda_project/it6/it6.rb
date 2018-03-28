# Add a new country to the hash with its details
def add_new_country(countries, new_country, country_details)
  if(countries != nil && new_country != nil && country_details != nil)
    countries[new_country] = country_details
  end
end


# Return an array which contains the countries sorted by decreasing population
def sort_countries_by_population_desc(countries)

  sorted_countries = Array.new()

  if(countries != nil)

    countries.each do |country, details|

      if(sorted_countries.count() > 0)
        insertion_index = sorted_countries.index(
          sorted_countries.select { |country_sorted| country_sorted["population"] <= details["population"]}.first())
      else
        insertion_index = 0
      end

      sorted_countries.insert(insertion_index, {"country"     => country,
                                                "capital"     => details["capital"],
                                                "population"  => details["population"]})
    end
  end

  return sorted_countries
end
