class CLI
    attr_accessor :name, :website, :address, :phone
    def start
        puts "Welcome to Brewery Finder"
        puts "Please enter a zipcode"
        input = gets.strip 
        API.get_breweries(input)
        display
        puts "Please select brewery by number."
       
       
        end
    end

  def display
    Breweries.all.each.with_index(1) do |x, index|
        puts "#{index} - #{x.name}"
    end

    def display_info

    end


   
end