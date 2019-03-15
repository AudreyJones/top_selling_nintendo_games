class TopSellingNintendoGames::Game
  attr_accessor :name, :release_date, :price, :console, :url

  def self.today
    #Replace fake data with data scraped from site!
    self.scraped_games
  end

  def self.scraped_games
    games = []

    # games << Scraper
    #capture site HTML
    #extract game attributes
    #instantiate a new game obj with extracted attr's
    games
  end

end
