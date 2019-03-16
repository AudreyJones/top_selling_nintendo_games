class TopSellingNintendoGames::Scraper
  #Should be limited to scraping only?
  def self.scraper
    html = "https://www.nintendo.com/games/bestsellers"
    doc = Nokogiri::HTML(open(html))
    attributes = {}
    doc.css("ul.games").each {|game|
      url = "https://www.nintendo.com#{game.css("a").attr("href").text}"
      # binding.pry
      attributes[:url] = game.css("a").attr("href").text
      game.css("div.info").each {|attribute|
        attributes[:title] = attribute.css("h3").text
        attributes[:release_date] = attribute.css("p").first.children.last.text.strip
        attributes[:price] = attribute.css("p.b3.row-price").text
        attributes[:console] = attribute.css("p.b4").last.attr("data-system")
      }
      open_url = Nokogiri::HTML(open(url))
    game_details = {}
      open_url.css("article#game-detail").each {|title|
        game_details[:game_info] = title.css("div.wrapper a")[0].attr("href")
        game_details[:add_on_content] = title.css("div.wrapper a")[1].attr("href")
        game_details[:reviews] = title.css("div.wrapper a")[2].attr("href")
      # Game Info: title.css("div.wrapper a")[0].attr("href") #=> "#industry-quotes" (link)
      # Add-on Content: title.css("div.wrapper a")[1].attr("href") #=> "#industry-quotes" (link)
      # Reviews/Industry Quotes: title.css("div.wrapper a")[2].attr("href") #=> "#industry-quotes" (link)
          }
    }
  end
end
