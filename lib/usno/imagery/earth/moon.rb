require 'pay_dirt'

module USNO
  module Imagery
    module Earth
      class Moon < EarthView
        include USNO::Imagery::Earth::CallWithTime

        def initialize(options = {})
          options = {
            view: "moon"
          }.merge(options) and super
        end
      end
    end
  end
end
