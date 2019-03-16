class TopSellingNintendoGames::Scraper

  def self.index_url
    Nokogiri::HTML(open("https://www.nintendo.com/games/bestsellers"))
  end

  def self.scrape_index
    self.index_url.css("ul.games") { |game|
      game.game_url = "https://www.nintendo.com#{game.css("a").attr("href").text}"
      table_of_attributes = game.css("div.info")
binding.pry
      table_of_attributes.each { |attribute|
        title = attribute.css("h3").text
        release_date = attribute.css("p").first.children.last.text.strip
        price = attribute.css("p.b3.row-price").text
        console = attribute.css("p.b4").last.attr("data-system")

# Creating a temporary Game object....
    temp_game = TopSellingNintendoGames::Game.new(title)
    temp_game.title = title
    temp_game.game_url = "https://www.nintendo.com#{game.css("a").attr("href").text}"
    temp_game
        }
      }
  end

    # doc.css("ul.games").each {|game|
    #   url = "https://www.nintendo.com#{game.css("a").attr("href").text}"
    #   attributes[:url] = game.css("a").attr("href").text
    #   game.css("div.info").each {|attribute|
    #     attributes[:title] = attribute.css("h3").text
    #     attributes[:release_date] = attribute.css("p").first.children.last.text.strip
    #     attributes[:price] = attribute.css("p.b3.row-price").text
    #     attributes[:console] = attribute.css("p.b4").last.attr("data-system")
    #   }

  def self.scraped_title(game) # Goal: to have these attributes open up specific links!
    game_page = Nokogiri::HTML(open(game.game_url))

    game.info = title.css("div.wrapper a")[0].attr("href")
    game.add_on_content = title.css("div.wrapper a")[1].attr("href")
    game.reviews = title.css("div.wrapper a")[2].attr("href")

    #   open_url = Nokogiri::HTML(open(url))
    #   open_url.css("article#game-detail").each {|title|
    #     game_details[:game_info] = title.css("div.wrapper a")[0].attr("href")
    #     game_details[:add_on_content] = title.css("div.wrapper a")[1].attr("href")
    #     game_details[:reviews] = title.css("div.wrapper a")[2].attr("href")
    #       }
    # }
  end
end
