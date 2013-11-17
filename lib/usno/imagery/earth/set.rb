require 'pay_dirt'


module USNO
  module Imagery
    module Earth
      class Set < EarthView
        include USNO::Imagery::Earth::Call

        def initialize(options = {})
          options = {
            view: "set"
          }.merge(options) and super
        end
      end
    end
  end
end
