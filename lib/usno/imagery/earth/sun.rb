require 'pay_dirt'

module USNO
  module Imagery
    module Earth
      class Sun < PayDirt::Base
        def initialize(options = {})
          options = {
            view: "sun",
            usno_imagery_class: USNO::Imagery::Earth::View
          }.merge(options)

          # sets instance variables from key value pairs,
          # will fail if any keys given before options aren't in options
          load_options(:view, :usno_imagery_class, options)
        end

        def call
          result true, @usno_imagery_class.new({
            view: @view,
            time: @time || Time.now
          }).call.data
        end
      end
    end
  end
end
