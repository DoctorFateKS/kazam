# frozen_string_literal: true

module Kazam
  module Repl
    # Handle the start and the loop cycle of the REPL
    class Loop
      def initialize(input:, output:)
        @output = output
        @prompt_renderer = PromptRenderer.new
        @input_reader = InputReader.new(input: input)
        @dispatcher = Execution::CommandDispatcher.new(output: output)
      end

      def start
        loop do
          print_prompt

          command = read_command

          break unless command

          result = dispatch(command)

          break if exit_requested?(result)
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

      def dispatch(command)
        @dispatcher.dispatch(command)
      end

      def exit_requested?(result)
        result == :exit_shell
      end
    end
  end
end
