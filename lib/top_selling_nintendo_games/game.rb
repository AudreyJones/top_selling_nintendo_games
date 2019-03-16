class TopSellingNintendoGames::Game
  attr_accessor :title, :release_date, :price, :console, :game_url, :game_info, :add_on_content, :reviews

  @@all = []

  def initialize(title = nil)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end

  # def open_in_browser
  #   system("open'#{nintendo_url}'")
  # end
          #These belong in another class, Girl!
              # def self.create
              #   new_game = self.new
              # end
              #
              # def self.add_properties
              #   game = self.create
              #   attributes = TopSellingNintendoGames::Scraper.scraped_attributes
              #   attributes.each do |key,value|
              #     game.send("#{key}=",value)
              #   end
              #
              #   details = TopSellingNintendoGames::Scraper.scraped_details
              #   details.each do |key,value|
              #     game.send("#{key}=",value)
              #   end
              #   @@complete_games_collection << game
              #   binding.pry
              # end
end
