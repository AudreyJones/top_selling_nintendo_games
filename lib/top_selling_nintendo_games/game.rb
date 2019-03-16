class TopSellingNintendoGames::Game ##GAME
  attr_accessor :title, :release_date, :price, :console, :url
  attr_reader :all
  @@all = []
  @@complete_games_collection = []

  def initialize
    @@all << self
  end

  def self.create
    new_game = self.new
  end

  def self.new_from_site #This is your Custom Constructor:create games with properties from their title sites!
    new_game = self.create
    attributes = TopSellingNintendoGames::Scraper.scraped_attributes
    attributes.each do |key,value|
      new_game.send("#{key}=",value)
    end
    new_game
  end

  def self.complete_games_collection
    @@complete_games_collection << self.new_from_site
  end
end
