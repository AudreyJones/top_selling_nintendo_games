class TopSellingNintendoGames::Game
  attr_accessor :title, :release_date, :price, :console, :url
  #Should encompass all behaviors and attributes/states of each game
  @@all = []

  def initialize
    @title = title
    @@all << self
  end

  def self.create
    new_game = self.new
  end

  def self.games_with_attr
    new_game = self.create

    doc.css("ul.games").each {|game|
      new_game.url = game.css("a").attr("href").text
      game.css("div.info").each {|attribute|
        attributes[:title] = attribute.css("h3").text
        attributes[:release_date] = attribute.css("p").first.children.last.text.strip
        attributes[:price] = attribute.css("p.b3.row-price").text
        attributes[:console] = attribute.css("p.b4").last.attr("data-system")
      }
    }
  end

  def self.today
    self.games_with_attr
  end


end
