module USNO
  module Imagery
    module Earth
      class EarthView < PayDirt::Base
        def initialize(options = {})
          options = {
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
