class Pirate
  # Pirates should have a name, weight, and height.
  attr_accessor :name, :weight, :height
  PIRATES = []

  def initialize(params)
    @name = params[:name]
    @weight = params[:weight]
    @height = params[:height]
    PIRATES << self
  end
  # You will also need a class method that returns all the pirates.
  def self.all
    PIRATES
  end
end