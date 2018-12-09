class PreciousMetal::Metal

    attr_accessor :name, :price
    
    @@all=[]

    def initialize(name:, price:)
        @name=name
        @price=price
        metal = self
        metal.name = name
        metal.price = price
        @@all << self
    end

    # def self.create_metal(metal_hash)
    #   metal = self.new
    #   metal.name = metal_hash[:name]
    #   metal.price = metal_hash[:price]
    # end

    def self.all
      @@all
    end

end