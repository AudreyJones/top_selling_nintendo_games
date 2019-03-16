class TopSellingNintendoGames::Game ##GAME
  attr_accessor :title, :release_date, :price, :console, :url
  #Should encompass all behaviors and attributes/states of each game
  @@all = []

  def initialize ## ALL Games created will have this done to them
    @@all << self
  end

  def self.all
    @@all
  end

  def self.create
    new_game = self.new
  end

  def self.new_from_site #This is your Custom Constructor to create games with properties from their title sites!
    new_game = self.create

# binding.pry
    # doc.css("ul.games").each {|game|
    #   new_game.url = game.css("a").attr("href").text
    #   game.css("div.info").each {|attribute|
    #     new_game.title = attribute.css("h3").text
    #     new_game.release_date = attribute.css("p").first.children.last.text.strip
    #     new_game.price = attribute.css("p.b3.row-price").text
    #     new_game.console = attribute.css("p.b4").last.attr("data-system")
    #   }
    # }
  end

  def self.today
    # self.games_with_attr
  end


end
