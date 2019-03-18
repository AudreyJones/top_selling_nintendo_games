class TopSellingNintendoGames::CLI
  def start
    TopSellingNintendoGames::Scraper.scrape_index
    puts "Hello! It's-a me, the Nintendo Top Selling Game App! In-we-go!".red.bold
    puts ""
    list_games
  end

  def list_games
    puts "Currently, the top-selling Nintendo games are:".green.bold
    puts ""
                                                                                                          #Design-y stuff here
    show_menu
  end

  def show_menu
    TopSellingNintendoGames::Game.all.each.with_index(1) do |game, index|
      @index = index
      puts "#{index}. #{game.title} - released: #{game.release_date} - #{game.price} for the #{game.console}"
    end
    make_a_selection
  end

  def make_a_selection
    puts "Pick a game and let's-a go!"
    input = gets.strip.downcase
      if input.to_i.between?(1,TopSellingNintendoGames::Game.all.length)
        game = TopSellingNintendoGames::Game.all.find do |game|
          @index == input
          TopSellingNintendoGames::Scraper.scraped_title(game)
            show_game_info(game)
        end

      else
        puts "Mario? MaRiO?! MAARRRRRRIIIOOOOOOOO!!!!!!!! (please try again)"
        puts ""
        show_menu
      end
  end

  def show_game_info(game)
    puts "Enter in 'category', 'players', or 'rating' to access that information for your selected game."
    puts ""
    input = gets.strip.downcase
    case input
    when "category"
      puts "#{game.category}"
    when "players"
      puts "#{game.num_of_players}"
    when "rating"
      puts "#{game.rating}"
    else
      puts "Mario? MaRiO?! MAARRRRRRIIIOOOOOOOO!!!!!!!! (please try again)"
      show_menu
    end


                                                                        # more Design-y things here...however the game info should look!
  end

  def select_another_game
    puts "Would you like to look at another game? Enter yes or no:"
    input = gets.strip.downcase
    case input
    when "yes"
      show_menu
    when "no"
      exit_app
    else
      puts "Oh no! Your input was invalid. Please try again!"
      show_menu
    end
  end

  def exit_app
                                                                        # Design-y things here too....!
    puts "Okie Dokie! Have a great day!"
  end

end
