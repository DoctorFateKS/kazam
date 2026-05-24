# frozen_string_literal: true

module Kazam
  module Builtins
    # Handle the exit command
    class Exit
      def execute
        :exit_shell
      end
    end
  end
end
