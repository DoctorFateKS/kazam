# frozen_string_literal: true

module Kazam
  module Execution
    # Handle builtins command of the shell
    class CommandDispatcher
      def initialize(output:)
        @output = output
        @exit_builtin = Builtins::Exit.new
      end

      def dispatch(command)
        return @exit_builtin.execute if exit_command?(command)

        print_invalid_command(command)
      end

      private

      def exit_command?(command)
        command == 'exit'
      end

      def print_invalid_command(command)
        @output.puts(
          "#{command}: command not found"
        )
      end
    end
  end
end
