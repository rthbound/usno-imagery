module USNO
  module Imagery
    class Venus < View
      def initialize(options = {})
        if options[:radar]
          options[:resource] = "imagery/venus-radar.png"
        end

        super
      end
    end
  end
end
