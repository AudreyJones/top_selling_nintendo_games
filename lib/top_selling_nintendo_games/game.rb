class TopSellingNintendoGames::Game ##GAME
  attr_accessor :title, :release_date, :price, :console, :url, :game_info, :add_on_content, :reviews
  attr_reader :all, :complete_games_collection
  @@all = [] #Objects only, pre-filling
  @@complete_games_collection = [] #Filled Objects

  def initialize
    @@all << self
  end

  def self.all
    @@all
  end

  def self.create
    new_game = self.new
  end

  def self.add_properties
    game = self.create
    attributes = TopSellingNintendoGames::Scraper.scraped_attributes
    attributes.each do |key,value|
      game.send("#{key}=",value)
    end

    details = TopSellingNintendoGames::Scraper.scraped_details
    details.each do |key,value|
      game.send("#{key}=",value)
    end
    @@complete_games_collection << game
    binding.pry
  end

  def self.complete_games_collection
    @@complete_games_collection
  end
end
