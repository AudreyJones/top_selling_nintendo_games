class TopSellingNintendoGames::Scraper          # SCRAPER

  def self.scraper
    html = "https://www.nintendo.com/games/bestsellers"
    doc = Nokogiri::HTML(open(html))
    attributes = {}   # Level 1 Info
    game_details = {} # Level 2 Info
    doc.css("ul.games").each {|game|
      url = "https://www.nintendo.com#{game.css("a").attr("href").text}"
      attributes[:url] = game.css("a").attr("href").text
      game.css("div.info").each {|attribute|
        attributes[:title] = attribute.css("h3").text
        attributes[:release_date] = attribute.css("p").first.children.last.text.strip
        attributes[:price] = attribute.css("p.b3.row-price").text
        attributes[:console] = attribute.css("p.b4").last.attr("data-system")
      }

      open_url = Nokogiri::HTML(open(url))
      open_url.css("article#game-detail").each {|title|
        game_details[:game_info] = title.css("div.wrapper a")[0].attr("href")
        game_details[:add_on_content] = title.css("div.wrapper a")[1].attr("href")
        game_details[:reviews] = title.css("div.wrapper a")[2].attr("href")
          }

    }
    binding.pry
  end
end
