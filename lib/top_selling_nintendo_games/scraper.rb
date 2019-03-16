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
      open_url.css.each {|title|
      binding.pry
          }
    }


  end

#   def self.level_two_scraper
#     #Second Level might be to crack the url of each title and pull details from each separate title
#     # CLEAN UP LATER: repetitive scraping
#     html = "https://www.nintendo.com/games/bestsellers"
#     doc = Nokogiri::HTML(open(html))
#     url =   doc.css("ul.games a").attr("href").text #=> "/games/detail/XYfGbmHybciAx7wE3EiKIu8c32ip0ULk"
#     details = {}
#     open_url = Nokogiri::HTML(open(url))
#     open_url.css.each {|title|
# binding.pry
#     }
#
#   end


end
