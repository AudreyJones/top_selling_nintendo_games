class TopSellingNintendoGames::Game ##GAME
  attr_accessor :title, :release_date, :price, :console, :url
  #Should encompass all behaviors and attributes/states of each game
  @@all = []

  def initialize ## ALL Games created will have this done to them
    @@all << self
  end

  def self.all
    @@all
  end

  def self.create
    new_game = self.new
  end

  def self.new_from_site #This is your Custom Constructor:create games with properties from their title sites!

    new_game = self.create
    attributes = TopSellingNintendoGames::Scraper.scraper

# New Game is populated with scraped data!
    attributes.each do |key,value|
      new_game.send("#{key}=",value)
    end
binding.pry
    new_game
  end

  def self.today
    # self.new_from_site
  end


end
