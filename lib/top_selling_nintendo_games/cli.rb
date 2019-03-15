require 'pry'
#Audrey, this is your Controller!

class TopSellingNintendoGames::Game #"NameSpaced"
  def start
    puts "Welcome!"
    list_games
    menu
    exit_app
  end

  def list_games
    puts "Here are the top-selling Nintendo games:"
    # <<-DOC.gsub /^\s*/, ''
    # DOC
    @games = TopSellingNintendoGames::Game.today
    @games.each.with_index(1) do |game, index|
      puts "#{index}. #{game.name} - released: #{game.release_date} - #{game.price} for #{game.console} "
    end
  end

  def menu
    input = nil
    continue_prompt = "Would you like info about any other game?"
    puts "Which game would you like more info on?"
    puts "Please select a list number for more info on that game or 'exit' to leave."
    while input != "exit"
      input = gets.strip.downcase

      if input.to_i > 0
        the_game = @games[input.to_i-1]
        puts "#{the_game.name} - released: #{the_game.release_date} - #{the_game.price} for #{the_game.console} "
      elsif input == "list"
        list_games
      else
        "I'm sorry, your input was invalid. Please try again!"
      end

    end
  end

  def exit_app
    puts "Thank you for checking in on the lastest top-selling games!"
  end

end
