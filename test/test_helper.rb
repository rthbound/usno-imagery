require 'coveralls'
Coveralls.wear!

require "minitest/autorun"

# The gem
$: << File.dirname(__FILE__) + "/../lib"
$: << File.dirname(__FILE__)

require "usno/imagery"
require "usno/imagery/earth/view"
require "usno/imagery/earth/sun"
require "usno/imagery/earth/moon"
require "usno/imagery/earth/rise"
require "usno/imagery/earth/set"
require "usno/imagery/earth/map"
