require 'pay_dirt'

module USNO
  module Imagery
    module Earth
      class Map < PayDirt::Base
        def initialize(options = {})
          options = {
            time:     Time.now,
            root_url: "http://api.usno.navy.mil/",
            resource: self.class.name.downcase.split("::")[1..-2].join("/") + ".png"
          }.merge(options)

          # sets instance variables from key value pairs,
          # will fail if any keys given before options aren't in options
          load_options(:time, :root_url, :resource, options)
        end

        def call
          result(true, query_for(@root_url + @resource))
        end

        private
        def query_for(resource)
          "#{resource}?view=full&date=#{date}&time=#{time}"
        end

        def date
          @time.utc.strftime("%m/%d/%Y")
        end

        def time
          @time.utc.strftime("%H:%M")
        end
      end
    end
  end
end
