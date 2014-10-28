require "elapsed_days/version"
require 'active_support'
require 'active_support/core_ext'
require 'time'

module ElapsedDays
  class Base
    class << self 
      def calc(birthday)
        elapsed = Time.now - Time.parse(birthday)
        puts "elapsed is #{elapsed}"
      end
    end
  end
end
