# JwuChicagoTowingData

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'jwu_chicago_towing_data'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install jwu_chicago_towing_data

## Usage

To access the entire list of towed vehicles, use this command:

```ruby
towed_cars = JwuChicagoTowingData::Car.all
```

To filter the list of towed vehicles by a search parameter, use this command:

```ruby
towed_cars = JwuChicagoTowingData::Car.find("IL")
```
*Replace "IL" with your own search terms.

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/jhsiaomei/jwu_chicago_towing_data. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.

