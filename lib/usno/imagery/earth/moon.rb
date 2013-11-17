require 'pay_dirt'

module USNO
  module Imagery
    module Earth
      class Moon < PayDirt::Base
        include USNO::Imagery::Earth::CallWithTime

        def initialize(options = {})
          options = {
            view: "moon",
            usno_imagery_class: USNO::Imagery::Earth::View
          }.merge(options)

          # sets instance variables from key value pairs,
          # will fail if any keys given before options aren't in options
          load_options(:view, :usno_imagery_class, options)
        end
      end
    end
  end
end
