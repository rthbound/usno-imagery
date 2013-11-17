# USNO::Imagery [![Code Climate](https://codeclimate.com/github/rthbound/usno-imagery.png)](https://codeclimate.com/github/rthbound/usno-imagery)[![Coverage Status](https://coveralls.io/repos/rthbound/usno-imagery/badge.png?branch=master)](https://coveralls.io/r/rthbound/usno-imagery?branch=master)[![Build Status](https://travis-ci.org/rthbound/usno-imagery.png?branch=master)](https://travis-ci.org/rthbound/usno-imagery)

Builds URLs for consuming USNO's imagery data services. Example:

![Earth at sunrise](https://github.com/rthbound/usno-imagery/blob/master/samples/rise?raw=true)

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

#### Other USNO::Imagery libraries

```ruby
# For an image of our Moon at any time between 1700 & 2100 A.D.
USNO::Imagery::Moon.new(time: Time.now).call.data
  #=> "http://api.usno.navy.mil/imagery/moon.png?date=11/17/2013&time=1:13"

# For an image of Mercury at any time between 1700 & 2100 A.D.
USNO::Imagery::Mercury.new(time: Time.now).call.data
  #=> "http://api.usno.navy.mil/imagery/mercury.png?date=11/17/2013&time=1:13"

# For an image of Venus at any time between 1700 & 2100 A.D.
USNO::Imagery::Venus.new(time: Time.now).call.data
  #=> "http://api.usno.navy.mil/imagery/venus.png?date=11/17/2013&time=1:13"

# For a radar image of Venus at any time between 1700 & 2100 A.D.
USNO::Imagery::Venus.new(time: Time.now, radar: true).call.data
  #=> "http://api.usno.navy.mil/imagery/venus-radar.png?date=11/17/2013&time=1:13"

# For an image of Mars at any time between 1700 & 2100 A.D.
USNO::Imagery::Mars.new(time: Time.now).call.data
  #=> "http://api.usno.navy.mil/imagery/mars.png?date=11/17/2013&time=1:13"

# For an image of Jupiter at any time between 1700 & 2100 A.D.
USNO::Imagery::Jupiter.new(time: Time.now).call.data
  #=> "http://api.usno.navy.mil/imagery/jupiter.png?date=11/17/2013&time=1:13"

# For an image of Jupiter's moon Io at any time between 1700 & 2100 A.D.
USNO::Imagery::Io.new(time: Time.now).call.data
  #=> "http://api.usno.navy.mil/imagery/io.png?date=11/17/2013&time=1:13"

# For an image of Jupiter's moon Europa at any time between 1700 & 2100 A.D.
USNO::Imagery::Europa.new(time: Time.now).call.data
  #=> "http://api.usno.navy.mil/imagery/europa.png?date=11/17/2013&time=1:13"

# For an image of Jupiter's moon Ganymede at any time between 1700 & 2100 A.D.
USNO::Imagery::Ganymede.new(time: Time.now).call.data
  #=> "http://api.usno.navy.mil/imagery/ganymede.png?date=11/17/2013&time=1:13"

# For an image of Jupiter's moon Callisto at any time between 1700 & 2100 A.D.
USNO::Imagery::Callisto.new(time: Time.now).call.data
  #=> "http://api.usno.navy.mil/imagery/callisto.png?date=11/17/2013&time=1:13"
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
