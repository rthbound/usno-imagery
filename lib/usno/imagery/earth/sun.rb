require 'pay_dirt'

module USNO
  module Imagery
    module Earth
      class Sun < EarthView
        include USNO::Imagery::Earth::CallWithTime

        def initialize(options = {})
          options = {
            view: "sun",
          }.merge(options) and super
        end
      end
    end
  end
end
