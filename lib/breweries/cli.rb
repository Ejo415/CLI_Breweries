class CLI
    attr_accessor :name, :website, :address, :phone
    def start
        puts "Welcome to Brewery Finder"
        puts "Please enter a zipcode"
        input = gets.strip 
        API.get_breweries(input)
        display
        select_brewery
        goodbye
        end
        
    end

  def display
    Breweries.all.each.with_index(1) do |x, index|
        puts "#{index} - #{x.name}"
    end

    def select_brewery
        puts "Please select brewery by number"
        input = gets.strip.to_i
        b = Breweries.all[input-1]
        puts b.address
        puts b.website
        puts b.phone
     end

     def goodbye
        puts "Thank you for using Brewery Finder"
     end

end