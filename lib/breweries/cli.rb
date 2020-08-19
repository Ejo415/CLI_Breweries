class CLI
    
    def start
        puts "Welcome to Brewery Finder"
        puts "Please enter a zipcode"
        input = gets.strip 
        API.get_breweries(input)
    end

   
end