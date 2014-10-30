require "a14z6ch_elapsed_days/version"
require 'active_support'
require 'active_support/core_ext'
require 'time'
require 'colorize'

I18n.enforce_available_locales = false

#
# To calculate elapsed days.
#
module A14z6chElapsedDays
  class Base
    class << self 

      #
      # calculating method
      # @param from date
      #
      def calc(date)
        begin
          elapsed_seconds = Time.now - Time.parse(date)
	  (elapsed_seconds / 60 / 60 / 24).to_i
        rescue ArgumentError => e
	  puts "given date is not valid.".colorize(:light_blue)
	end
      end
    end
  end
end
