require 'pay_dirt'

module USNO
  module Imagery
    module Earth
      class Rise < EarthView
        include USNO::Imagery::Earth::Call

        def initialize(options = {})
          options = {
            view: "rise"
          }.merge(options) and super
        end
      end
    end
  end
end
