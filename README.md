# USNO::Imagery [![Code Climate](https://codeclimate.com/github/rthbound/usno-imagery.png)](https://codeclimate.com/github/rthbound/usno-imagery)[![Coverage Status](https://coveralls.io/repos/rthbound/usno-imagery/badge.png?branch=master)](https://coveralls.io/r/rthbound/usno-imagery?branch=master)[![Build Status](https://travis-ci.org/rthbound/usno-imagery.png?branch=master)](https://travis-ci.org/rthbound/usno-imagery)

Builds URLs for consuming USNO's imagery data services. These services provide synthetic views of earth and other selected solar system bodies, e.g.

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
# Mercator projection showing day / night (at any given time)
USNO::Imagery::Earth::Map.new(time: Time.now).call.data
  #=> "http://api.usno.navy.mil/imagery/earth.png?view=full&date=11/17/2013&time=1:11"

# A spherical view of Earth as seen from the sun (at any given time)
USNO::Imagery::Earth::Sun.new(time: Time.now).call.data
  #=> "http://api.usno.navy.mil/imagery/earth.png?view=sun&date=11/17/2013&time=1:13"

# A spherical view of Earth as seen from the moon (at any given time)
USNO::Imagery::Earth::Moon.new(time: Time.now).call.data
  #=> "http://api.usno.navy.mil/imagery/earth.png?view=moon&date=11/17/2013&time=1:12"

# Earth at sunrise
USNO::Imagery::Earth::Rise.new.call.data
  #=> "http://api.usno.navy.mil/imagery/earth.png?view=rise"

# Earth at sunset
USNO::Imagery::Earth::Set.new.call.data
  #=> "http://api.usno.navy.mil/imagery/earth.png?view=set"
```

#### Other celestial bodies

Synthetic views of all celestial bodies can be fetched for any time between 1700 & 2100 A.D.

```ruby
# Our Moon
USNO::Imagery::Moon.new(time: Time.now).call.data
  #=> "http://api.usno.navy.mil/imagery/moon.png?date=11/17/2013&time=1:13"

# Mercury
USNO::Imagery::Mercury.new(time: Time.now).call.data
  #=> "http://api.usno.navy.mil/imagery/mercury.png?date=11/17/2013&time=1:13"

# Venus
USNO::Imagery::Venus.new(time: Time.now).call.data
  #=> "http://api.usno.navy.mil/imagery/venus.png?date=11/17/2013&time=1:13"

# For a radar image of Venus
USNO::Imagery::Venus.new(time: Time.now, radar: true).call.data
  #=> "http://api.usno.navy.mil/imagery/venus-radar.png?date=11/17/2013&time=1:13"

# Mars
USNO::Imagery::Mars.new(time: Time.now).call.data
  #=> "http://api.usno.navy.mil/imagery/mars.png?date=11/17/2013&time=1:13"

# Jupiter
USNO::Imagery::Jupiter.new(time: Time.now).call.data
  #=> "http://api.usno.navy.mil/imagery/jupiter.png?date=11/17/2013&time=1:13"

# Jupiter's moon Io
USNO::Imagery::Io.new(time: Time.now).call.data
  #=> "http://api.usno.navy.mil/imagery/io.png?date=11/17/2013&time=1:13"

# Jupiter's moon Europa
USNO::Imagery::Europa.new(time: Time.now).call.data
  #=> "http://api.usno.navy.mil/imagery/europa.png?date=11/17/2013&time=1:13"

# Jupiter's moon Ganymede
USNO::Imagery::Ganymede.new(time: Time.now).call.data
  #=> "http://api.usno.navy.mil/imagery/ganymede.png?date=11/17/2013&time=1:13"

# Jupiter's moon Callisto
USNO::Imagery::Callisto.new(time: Time.now).call.data
  #=> "http://api.usno.navy.mil/imagery/callisto.png?date=11/17/2013&time=1:13"
```

## Other USNO libraries

[usno-transit](http://github.com/rthbound/usno-transit) provides times of rise, set, and transit for major solar system bodies and selected bright stars. The output table also includes azimuth at rise and set as well as altitude at transit.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

[![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/rthbound/usno-imagery/trend.png)](https://bitdeli.com/free "Bitdeli Badge")
