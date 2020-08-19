
require "json"
require "pry"
require 'httparty'


class API
    def self.get_breweries(zipcode)
    url = 'https://api.openbrewerydb.org/breweries?by_postal="#{zipcode}"'
    response = HTTParty.get(url) 
    binding.pry
    end
    


    
end
