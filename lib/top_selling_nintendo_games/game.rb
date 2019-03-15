class TopSellingNintendoGames::Game
  attr_accessor :name, :release_date, :price, :console, :url

  def self.today

    #should return instances of Game


    game_1 = self.new
    game_1.name = "Super Smash Bros. Ultimate"
    game_1.release_date = "Dec 07, 2018"
    game_1.price = "$59.99"
    game_1.console = "Switch"
    game_1.url = "https://www.nintendo.com/games/detail/super-smash-bros-switch"

    game_2 = self.new
    game_2.name = "Kirby's Extra Epic Yarn"
    game_2.release_date = "Mar 08, 2019"
    game_2.price = "$39.99"
    game_2.console = "3DS"
    game_2.url = "https://www.nintendo.com/games/detail/kirbys-extra-epic-yarn-3ds"

    [game_1,game_2]
  end

end
