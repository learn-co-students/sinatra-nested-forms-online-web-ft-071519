class Ship
  # The ship class should have name, type, and booty attributes
  attr_accessor :name, :type, :booty
  SHIPS = []

  def initialize(params)
    @name = params[:name]
    @type = params[:type]
    @booty = params[:booty]
    SHIPS << self
  end
  # as well as a class method .all that returns all the ships
  def self.all
    SHIPS
  end
  # and a class method .clear that deletes all ships.
  def self.clear
    SHIPS.clear
  end
end