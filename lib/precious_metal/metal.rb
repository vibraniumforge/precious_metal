class PreciousMetal::Metal

    attr_accessor :name, :price
    
    @@all=[]

    def initialize
        @name=name
        @price=price
        @@all << self
    end

    def self.create_metal(metal_hash)
      metal = Metal.new()
      metal.name = metal_hash[:name]
      metal.price = metal_hash[:price]
    end

    def self.all
      @@all
    end

end