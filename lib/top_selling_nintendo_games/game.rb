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

  def open_link
    system("open '#{game_url}'")
  end

end
