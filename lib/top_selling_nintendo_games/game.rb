class TopSellingNintendoGames::Game
  attr_accessor :name, :release_date, :price, :console, :url

  def self.today

    #should return instances of Game
    puts <<-DOC.gsub /^\s*/, ''
      Here are the top-selling Nintendo games:
      1. Super Smash Bros. Ultimate - released Dec 07, 2018 - $59.99 - Switch
      2. Kirby's Extra Epic Yarn - released Mar 08, 2019 - $39.99 - 3DS
    DOC

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
