require "jekyll-less/version"

module Jekyll
  module Less
    class LessConverter < Converter
      pygments_prefix "\n"
      pygments_suffix "\n"

      def setup
        return if @setup
        require 'less'
        @setup = true
      rescue LoadError
        STDERR.puts 'You are missing a library required for less. Please run:'
        STDERR.puts '  $ [sudo] gem install less'
        raise FatalException.new("Missing dependency: less")
      end

      def matches(ext)
        ext =~ /less/i
      end

      def output_ext(ext)
        ".css"
      end

      def convert(content)
        setup
        begin
          ::Less::Parser.new().parse(content).to_css
        rescue => e
          puts "Less Exception: #{e.message}"
        end
      end
    end
  end
end
