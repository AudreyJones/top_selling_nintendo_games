# TopSellingNintendoGames

This is a Ruby CLI gem that dynamically scrapes Nintendo's top-selling games page and allows the user to discover more information (game category, number of players, and rating) about the game of their choosing. Happy Gaming!

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'top_selling_nintendo_games'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install top_selling_nintendo_games

## Usage

To use the Top-Selling Nintendo Games CLI gem, simply type in your terminal: 'ruby lib/top_selling_nintendo_games.rb' or you can enable the gem to run via './bin/top_selling_nintendo_games'. To do this, you'll need to ensure that you have execute permissions. You can check your permissions via 'ls -lah', which will legibly list your files with their permissions represented by specific letters to the left of their filenames. If top_selling_nintendo_games is missing an 'x' (signifying execute permissions), you can add execute permissions by running 'chmod +x top_selling_nintendo_games' in your terminal. Now, you should be able to run the gem using './bin/top_selling_nintendo_games'! Congratulations and happy gaming!

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/'AudreyJones'/top_selling_nintendo_games. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the TopSellingNintendoGames project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/'AudreyJones'/top_selling_nintendo_games/blob/master/CODE_OF_CONDUCT.md).
