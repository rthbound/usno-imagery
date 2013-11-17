require_relative "imagery/version"
require_relative "imagery/earth/view"
require_relative "imagery/earth/earth_view"
require_relative "imagery/earth/call"
require_relative "imagery/earth/call_with_time"

require_relative "imagery/earth/map"
require_relative "imagery/earth/rise"
require_relative "imagery/earth/set"
require_relative "imagery/earth/sun"
require_relative "imagery/earth/moon"

module USNO
  module Imagery
    module Earth
    end

    class View < PayDirt::Base
      def initialize(options = {})
        options = {
          time:     Time.now,
          root_url: "http://api.usno.navy.mil/",
          resource: self.class.name.downcase.split("::")[1..-1].join("/") + ".png"
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
        "#{resource}?#{time}"
      end

      def date
        @time.utc.strftime("%m/%d/%Y")
      end

      def time
        @time ? "&date=#{ date }&time=#{ @time.utc.strftime("%k:%M").lstrip }" : ""
      end
    end
  end
end

require_relative "imagery/ganymede"
require_relative "imagery/io"
require_relative "imagery/europa"
require_relative "imagery/jupiter"
require_relative "imagery/mars"
require_relative "imagery/mercury"
require_relative "imagery/venus"
require_relative "imagery/moon"
require_relative "imagery/callisto"
