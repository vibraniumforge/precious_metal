require_relative "./cli.rb"
require_relative "./scraper.rb"

class PreciousMetal::Metal

    attr_accessor :name, :price

    
    @@all=[]

    def initialize
        @name=name
        @price=price
        @@all << self
    end

    def self.create_metal(metal_hash)
        # puts "metal= #{metal_hash}"
        # puts "metal name= #{metal_hash[:name]}"
        # puts "metal price= #{metal_hash[:price]}"
            metal = Metal.new()
            metal.name = metal_hash[:name]
            metal.price = metal_hash[:price]
            # binding.pry
    end

    def self.all
        @@all
    end

end