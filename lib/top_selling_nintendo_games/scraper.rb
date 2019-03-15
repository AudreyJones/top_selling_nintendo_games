class TopSellingNintendoGames::Scraper

  def self.scraper
    html = "https://www.nintendo.com/games/bestsellers"
    doc = Nokogiri::HTML(open(html))
    game_list =
    doc.css("ul.games").each {|game|
      game.css("div.info").each {|attribute|
        binding.pry
        #Title: attribute.css("h3").text
        #release_date: attribute.css("p").first.children.last.text.strip
        #
      }

      #title: doc.css("ul.games a").attr("data-game-title").value
      #
    }
  end


end
