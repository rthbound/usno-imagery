require 'pay_dirt'

module USNO
  module Imagery
    module Earth
      class View < PayDirt::Base
        def initialize(options = {})
          options = {
            time:     Time.now,
            root_url: "http://api.usno.navy.mil/",
            resource: self.class.name.downcase.split("::")[1..-2].join("/") + ".png"
          }.merge(options)

          # sets instance variables from key value pairs,
          # will fail if any keys given before options aren't in options
          load_options(:time, :root_url, :resource, :view, options) and validate_state
        end

        def call
          result(true, query_for(@root_url + @resource))
        end

        private
        def query_for(resource)
          "#{ resource }?view=#{ @view }" + time
        end

        def date
          @time.utc.strftime("%m/%d/%Y")
        end

        def time
          @time ? "&date=#{ date }&time=#{ @time.utc.strftime("%k:%M").lstrip }" : ""
        end

        def validate_state
          ["full", "moon", "sun", "rise", "set"].include? @view or raise(
            ":view not recognized - #{@view}"
          )
        end
      end
    end
  end
end
