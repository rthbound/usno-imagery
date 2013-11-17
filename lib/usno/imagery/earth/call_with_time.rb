module USNO
  module Imagery
    module Earth
      module CallWithTime
        def self.included(base)
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
end
