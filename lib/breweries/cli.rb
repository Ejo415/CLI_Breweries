class CLI
    attr_accessor :name, :website, :address, :phone
    def start
        puts "Welcome to Brewery Finder"
        puts "Please enter a zipcode"
        input = gets.strip 
        if input.length < 5 || input.length > 6
        puts "Zipcode invalid".colorize(:red)
        self.start
    else puts  "Zipcode valid".colorize(:green)
         API.get_breweries(input)
         binding.pry
        display
        select_brewery
        new_search
        goodbye
        end  
    end

  def display
    puts "We have found #{Breweries.count} Breweries in your area!"
    Breweries.all.each.with_index(1) do |x, index|
        puts "#{index} - #{x.name}".colorize(:green)
        end
    end

    def select_brewery
        puts "Please select brewery by number"
        input = gets.strip.to_i
        b = Breweries.all[input-1]
        if input > Breweries.all.length || input < 1
            puts "Not a valid input".colorize(:red)
            select_brewery
        else
        puts b.address.colorize(:magenta)
        puts b.website.colorize(:light_blue)
        puts b.phone.insert(3,"-").insert(7,"-").colorize(:red)
     end
    end

     def goodbye
        puts "Thank you for using Brewery Finder".colorize(:green)
        exit
     end

     def new_search
        puts "Would you like to search again? y/n"
        input = gets.strip
        if input == "y"
            Breweries.clear
            CLI.new.start
        else
        
        end
    end


end