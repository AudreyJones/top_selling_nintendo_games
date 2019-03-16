require 'pry'
#Audrey, this is your Controller!

class TopSellingNintendoGames::Game #"NameSpaced"
  def start
    puts "Hello! It's-a me, the Nintendo Top Selling Game App!"
    list_games
    menu
  end

  def list_games
    puts "Currently, these are the top-selling Nintendo games:"
    @games = TopSellingNintendoGames::Game.complete_games_collection
    list = @games.each.with_index(1) do |game, index|
      puts "#{index}. #{game.title} - released: #{game.release_date} - #{game.price} for #{game.console} "
    end
    list
  end

  def menu
    input = nil
    continue_prompt = "Pick a game and let's-a go!"
    puts "#{continue_prompt} Or you can enter 'exit' to leave the app!"
    input = gets.strip.downcase
    if input == "exit"
      exit_app
    else
      while input != "exit" do
        if input.to_i > 0
          the_game = @games[input.to_i-1]
          puts "#{the_game.title} - released: #{the_game.release_date} - #{the_game.price} for #{the_game.console} "
        elsif input == "list"
          # list_games #Infinite Loop Issue
        else
          puts "Oh no! Your input was invalid. Please try again!"
        end
      end
    end
  end

  def exit_app
    puts "Thank you for checking in on the lastest top-selling games!"
  end

end
