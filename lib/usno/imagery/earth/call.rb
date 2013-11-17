module USNO
  module Imagery
    module Earth
      module Call
        def self.included(base)
          def call
            result true, @usno_imagery_class.new({
              view: @view,
              time: nil
            }).call.data
          end
        end
      end
    end
  end
end
