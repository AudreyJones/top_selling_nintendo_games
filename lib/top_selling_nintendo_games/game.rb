class TopSellingNintendoGames::Game ##GAME
  attr_accessor :title, :release_date, :price, :console, :url
  #Should encompass all behaviors and attributes/states of each game
  @@all = []

  def initialize ## ALL Games created will have this done to them
    @@all << self
    @attributes = TopSellingNintendoGames::Scraper.scraper
  end

  def self.all
    @@all
  end

  def self.create
    new_game = self.new
  end

  def self.new_from_site #This is your Custom Constructor to create games with properties from their title sites!
    new_game = self.create

    @attributes
    binding.pry
  end

  def self.today
    # self.games_with_attr
  end


end
