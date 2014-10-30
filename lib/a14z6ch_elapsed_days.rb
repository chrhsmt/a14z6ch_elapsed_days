require "a14z6ch_elapsed_days/version"
require 'active_support'
require 'active_support/core_ext'
require 'time'

module A14z6chElapsedDays
  class Base
    class << self 
      def calc(birthday)
        elapsed = Time.now - Time.parse(birthday)
        puts "elapsed is #{elapsed}"
      end
    end
  end
end
