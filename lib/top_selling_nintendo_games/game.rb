class TopSellingNintendoGames::Game
  attr_accessor :title, :release_date, :price, :console, :game_url, :category, :num_of_players, :rating

  @@all = []

  def initialize(title = nil)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end

  def open_link
    system("open '#{game_url}'")
  end

end
