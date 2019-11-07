# frozen_string_literal: true

class PreciousMetal::Metal
  attr_accessor :name, :price

  @@all = []

  def initialize(name:, price:)
    @name = name
    @price = price
    metal = self
    metal.name = name
    metal.price = price
    @@all << self
  end

  def self.all
    @@all
  end
end
