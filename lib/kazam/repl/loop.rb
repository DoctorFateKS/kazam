# frozen_string_literal: true

module Kazam
  module Repl
    # Handle the start and the loop cycle of the REPL
    class Loop
      def initialize(input:, output:)
        @output = output
        @prompt_renderer = PromptRenderer.new
        @input_reader = InputReader.new(
          input: input
        )
      end

      def start
        loop do
          print_prompt

          command = read_command

          break if command.nil?

          print_invalid_command(command)
        end
      end

      private

      def print_prompt
        @output.write(prompt)
      end

      def prompt
        @prompt_renderer.render
      end

      def read_command
        @input_reader.read
      end

      def print_invalid_command(command)
        @output.puts(
          "#{command}: command not found"
        )
      end
    end
  end
end
