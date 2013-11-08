require 'pay_dirt'

module USNO
  module Imagery
    module Earth
      class Rise < PayDirt::Base
        def initialize(options = {})
          options = {
            root_url: "http://api.usno.navy.mil/",
            resource: self.class.name.downcase.split("::")[1..-2].join("/") + ".png",
            view:     self.class.name.downcase.split("::")[-1]
          }.merge(options)

          # sets instance variables from key value pairs,
          # will fail if any keys given before options aren't in options
          load_options(:view, options)
        end

        def call
          result(true, query_for(@root_url + @resource))
        end

        private
        def query_for(resource)
          "#{resource}?view=#{@view}"
        end
      end
    end
  end
end
