class CLI
    attr_accessor :name, :website, :address, :phone
    def start
        puts "Welcome to Brewery Finder"
        puts "Please enter a zipcode"
        input = gets.strip 
        API.get_breweries(input)
        display
        select_brewery
        new_search
        goodbye
        end
        
    end

  def display
    Breweries.all.each.with_index(1) do |x, index|
        puts "#{index} - #{x.name}"
        if self == []
            puts "No breweries found"
            CLI.new.start
        end
    end

    def select_brewery
        puts "Please select brewery by number"
        input = gets.strip.to_i
        b = Breweries.all[input-1]
        puts b.address
        puts b.website
        puts b.phone.insert(3,"-").insert(7,"-")
     end

     def goodbye
        puts "Thank you for using Brewery Finder"
        
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