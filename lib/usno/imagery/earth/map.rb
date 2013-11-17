require 'pay_dirt'

module USNO
  module Imagery
    module Earth
      class Map < EarthView
        include USNO::Imagery::Earth::CallWithTime

        def initialize(options = {})
          options = {
            view: "full"
          }.merge(options) and super
        end
      end
    end
  end
end
