# USNO::Imagery

Builds URLs for consuming USNO's imagery data services

## Installation

Add this line to your application's Gemfile:

    gem 'usno-imagery'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install usno-imagery

## Usage

Warning! This library will be changing a lot as I explore the nooks and crannies of USNO's imagery data services.

#### USNO::Imagery::Earth

The earth namespace will contain classes for viewing USNO's earth images.
Currently there are three classes here: `Map`, `Sphere`, `Rise`, and `Set`

A view of the earth projected onto a 2D plane (at any given time):

    USNO::Imagery::Earth::Map.new(time: Time.now).call.data
    #=> "http://api.usno.navy.mil/imagery/earth.png?view=full&date=11/08/2013&time=20:32"

A spherical view of the earth as seen from the moon (at any given time)

    USNO::Imagery::Earth::Sphere.new(time: Time.now).call.data
    #=> "http://api.usno.navy.mil/imagery/earth.png?view=moon&date=11/08/2013&time=20:31"

A current view of the earth's sunrise

    USNO::Imagery::Earth::Rise.new.call.data
    => "http://api.usno.navy.mil/imagery/earth.png?view=rise"

A current view of the earth's sunset

    USNO::Imagery::Earth::Set.new.call.data
    #=> "http://api.usno.navy.mil/imagery/earth.png?view=set"

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
