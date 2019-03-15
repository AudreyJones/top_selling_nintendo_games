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
    # puts <<-DOC.gsub /^\s*/, ''
    #   Here are the top-selling Nintendo games:
    #   1. Super Smash Bros. Ultimate - released Dec 07, 2018 - $59.99 - Switch
    #   2. Kirby's Extra Epic Yarn - released Mar 08, 2019 - $39.99 - 3DS
    # DOC
    #@games = TopSellingNintendoGames::Game.today
  end

  def menu
    input = nil
    continue_prompt = "Would you like info about any other game?"
    puts "Which game would you like more info on?"
    puts "Please select a list number for more info on that game, 'back' to go back to the main menu, or 'exit' to leave."
    while input != "exit"
      input = gets.strip.downcase
      case input
      when "1"
        puts "More info on deal 1..."
        puts continue_prompt
      when "2"
        puts "More info on deal 2..."
        puts continue_prompt
      when "back"
        list_games
      else #Invalid input
        puts "I'm sorry, your input was invalid. Please try again!"
      end
    end
  end

  def exit_app
    puts "Thank you for checking in on the lastest top-selling games!"
  end

end
