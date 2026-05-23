# frozen_string_literal: true

module Kazam
  module Repl
    # Handle the input of the user
    class InputReader
      def initialize(input:)
        @input = input
      end

      def read
        @input.gets&.chomp
      end
    end
  end
end
