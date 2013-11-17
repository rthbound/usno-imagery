# USNO::Imagery [![Code Climate](https://codeclimate.com/github/rthbound/usno-imagery.png)](https://codeclimate.com/github/rthbound/usno-imagery)[![Coverage Status](https://coveralls.io/repos/rthbound/usno-imagery/badge.png?branch=master)](https://coveralls.io/r/rthbound/usno-imagery?branch=master)[![Build Status](https://travis-ci.org/rthbound/usno-imagery.png?branch=master)](https://travis-ci.org/rthbound/usno-imagery)

Builds URLs for consuming USNO's imagery data services

## Installation

Add this line to your application's Gemfile:

    gem 'usno-imagery'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install usno-imagery

## Usage

#### USNO::Imagery::Earth

The earth namespace will contain classes for viewing USNO's earth images.

```ruby
# For an image of the entire earth (Mercator projection) with day / night
USNO::Imagery::Earth::Map.new(time: Time.now).call.data
  #=> "http://api.usno.navy.mil/imagery/earth.png?view=full&date=11/17/2013&time=1:11"

# For an image of the earth as seen from the sun
USNO::Imagery::Earth::Sun.new(time: Time.now).call.data
  #=> "http://api.usno.navy.mil/imagery/earth.png?view=sun&date=11/17/2013&time=1:13"

# For an image of the earth as seen from the moon
USNO::Imagery::Earth::Moon.new(time: Time.now).call.data
  #=> "http://api.usno.navy.mil/imagery/earth.png?view=moon&date=11/17/2013&time=1:12"

# For an image of the entire earth at sunrise
USNO::Imagery::Earth::Rise.new.call.data
  #=> "http://api.usno.navy.mil/imagery/earth.png?view=rise"

# For an image of the entire earth at sunset
USNO::Imagery::Earth::Set.new.call.data
  #=> "http://api.usno.navy.mil/imagery/earth.png?view=set"
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
