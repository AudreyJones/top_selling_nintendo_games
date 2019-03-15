class TopSellingNintendoGames::Scraper

  def self.scraper
    html = "https://www.nintendo.com/games/bestsellers"
    doc = Nokogiri::HTML(open(html))
    game_list =
    doc.css("ul.games").each {|game|

        binding.pry
      game.css("div.info").each {|attribute|

        #Title: attribute.css("h3").text
        #release_date: attribute.css("p").first.children.last.text.strip
        #price: attribute.css("p.b3.row-price").text
        #console: attribute.css("p.b4").last.attr("data-system")
        #url(2nd level): game.css("a").attr("href").text
      }


    }
  end


end
