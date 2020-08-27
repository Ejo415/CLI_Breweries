class Breweries

    attr_accessor :name, :website, :address, :phone

    @@all = []

     def initialize(name, website, address, phone)
        @name = name
        @website = website
        @address = address          
        @phone = phone 
        @@all << self
     end

    def self.all
        @@all
    end

    def self.clear
        @@all.clear
    end


    def self.count
        @@all.count 
    end

    def self.address_order
        @@all.sort_by do |entry|
            entry.address 
        end
    end

end
