class TopSellingNintendoGames::Scraper

  def self.index_url
    Nokogiri::HTML(open("https://www.nintendo.com/games/bestsellers"))
  end

  def self.scrape_index # Level One
    list_of_games = self.index_url.css("ul.games")
      game_url = self.index_url.css("a").attr("href").text
    list_of_games = list_of_games.css("div.info")
      list_of_games.each do |attribute|
        title = attribute.css("h3").text
        release_date = attribute.css("p").first.children.last.text.strip
        price = attribute.css("p.b3.row-price").text
        console = attribute.css("p.b4").last.attr("data-system")

  # Creating a temporary Game object.... :release_date, :price, :console, :game_url
    temp_game = TopSellingNintendoGames::Game.new(title)
    temp_game.title = title
    temp_game.release_date = release_date
    temp_game.price = price
    temp_game.console = console
    temp_game.game_url = "https://www.nintendo.com" + game_url
    temp_game
    end
  end

  def self.scraped_title(game) 
    game_page = Nokogiri::HTML(open(game.game_url))
    # game_page = game_page.css("div")

  binding.pry

    # game.category =
    # game.num_of_players =
    # game.rating =
  end


end
