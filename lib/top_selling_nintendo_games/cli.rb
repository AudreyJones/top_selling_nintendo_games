require 'pry'
#Audrey, this is your Controller!

class TopSellingNintendoGames::Game #"NameSpaced"
  def start
    puts "Hello! It's-a me, the Nintendo Top Selling Game App!"
    list_games
    menu
  end

  def list_games
    puts "Here are the top-selling Nintendo games:"
    games = TopSellingNintendoGames::Game.complete_games_collection
    list = games.each.with_index(1) do |game, index|
      puts "#{index}. #{game.title} - released: #{game.release_date} - #{game.price} for #{game.console} "
    end
    list
  end

  def menu
    input = nil
    continue_prompt = "Would you like info about any other game?"
    puts "Which game would you like more info on? You can enter:"
    puts "- a game number for more info on that particular game"
    puts "- 'list' to return all of the current top-selling games"
    puts "- or 'exit' to leave the app"
    while input == nil
      input = gets.strip.downcase

      if input.to_i > 0
        the_game = @games[input.to_i-1]
        puts "#{the_game.name} - released: #{the_game.release_date} - #{the_game.price} for #{the_game.console} "
      elsif input == "list"
        list_games
      elsif input == "exit"
        exit_app
      else
        puts "I'm sorry, your input was invalid. Please try again!"
      end

    end
  end

  def exit_app
    puts "Thank you for checking in on the lastest top-selling games!"
  end

end
