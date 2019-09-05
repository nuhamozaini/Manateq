# Manateq

Manateq - a handy library for searching and listing regions, cities and districts in Saudi Arabia

## Credit

I give credit to [Abdulaziz Homaily](https://github.com/homaily/Saudi-Arabia-Regions-Cities-and-Districts) for providing data.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'manateq'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install manateq

## Usage

```ruby
require 'manateq'

# to list all districts, cities or regions
districts = Manateq::District.list
cities = Manateq::City.list
regions = Manateq::Region.list

# to search a city by name, and same goes for districts and regions
city = Manateq::City.search 'Riyadh' 

# to search a city by id, and same goes for districts and regions
city = Manateq::City.get_by_id 6

# A city object example
#<Manateq::City:0x00007fa7f803a000
 @arabic_name="الرياض",
 @english_name="Riyadh",
 @id=3,
 @region=
  #<Manateq::Region:0x00007fa7f8065d40
   @arabic_name="الرياض",
   @english_name="Ar Riyadh",
   @id=6>>
 
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/manateq. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Manateq project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/manateq/blob/master/CODE_OF_CONDUCT.md).
