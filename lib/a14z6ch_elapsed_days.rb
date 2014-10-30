require "a14z6ch_elapsed_days/version"
require 'active_support'
require 'active_support/core_ext'
require 'active_support/number_helper'
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
          puts "#{(elapsed_seconds / 60 / 60 / 24).to_i.to_s(:delimited)} days elapsed from the day \"#{date}\"".colorize(:light_magenta)
        rescue ArgumentError => e
	  puts "given date is not valid.".colorize(:light_blue)
	end
      end
    end
  end
end
