class TopSellingNintendoGames::Scraper

  def self.index_url
    Nokogiri::HTML(open("https://www.nintendo.com/games/bestsellers"))
  end

  def self.scrape_index # Level One
    list_of_games = self.index_url.css("ul.games")
      game_url = list_of_games.css("a.main-link.quickview").attr("href").value
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
    game_page = Nokogiri::HTML(open(game.game_url)) #=> "https://www.nintendo.com/games/detail/XYfGbmHybciAx7wE3EiKIu8c32ip0ULk"
# binding.pry
      game.description = game_page.css("div.bullet-list.drawer").text
      game.num_of_players = game_page.css("div.flex div").css("dd.num-of-players").text
      game.rating = game_page.css("div.flex span.esrb-rating").css('img').attr('alt').value
      game.category = game_page.css("div.flex div").css("dd")[3].text

  end


end
