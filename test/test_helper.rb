require 'coveralls'
Coveralls.wear!

require "minitest/autorun"

# The gem
$: << File.dirname(__FILE__) + "/../lib"
$: << File.dirname(__FILE__)
require "usno/imagery/earth/map"
require "usno/imagery/earth/sphere"
require "usno/imagery/earth/rise"
require "usno/imagery/earth/set"
