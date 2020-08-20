
require "json"
require "pry"
require 'httparty'


class API
    def self.get_breweries(zipcode)
    url = "https://api.openbrewerydb.org/breweries?by_postal=#{zipcode}"
    
    response = HTTParty.get(url)
    response.each do |x|
        name = x["name"]
        website = x["website_url"]
        address =  x["street"]
        phone = x["phone"]
        Breweries.new(name, website, address, phone)
        
    end
   if Breweries.all == [] 
    puts "No breweries found.".colorize(:red)
    CLI.new.start
   end
end

end
