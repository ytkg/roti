# frozen_string_literal: true

module Roti
  class Cli
    HELP_OPTIONS = ['-h', '--help'].freeze
    VERSION_OPTIONS = ['-v', '--version'].freeze
    DECODE_OPTIONS = ['-d', '--decode'].freeze

    class << self
      def start
        case ARGV[0]
        when *HELP_OPTIONS
          help
        when *VERSION_OPTIONS
          version
        when *DECODE_OPTIONS
          decode(ARGV[1])
        else
          encode(ARGV[0])
        end
      end

      private

      def help
        puts 'Usage: roti [OPTION]...'
        puts 'Options:'
        puts "  #{DECODE_OPTIONS.join(', ')}"
        puts "  #{HELP_OPTIONS.join(', ')}"
        puts 'Examples:'
        puts '  roti hello'
        puts '  roti -d igopt'
      end

      def version
        puts "roti v#{Roti::VERSION}"
      end

      def encode(string)
        return help if string.nil?

        puts Roti.encode(string)
      end

      def decode(string)
        return help if string.nil?

        puts Roti.decode(string)
      end
    end
  end
end
