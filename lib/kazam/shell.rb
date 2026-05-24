# frozen_string_literal: true

module Kazam
  # Shell is responsible for initializing and starting a shell session
  class Shell
    def initialize(input:, output:)
      @repl = Repl::Loop.new(
        input: input,
        output: output
      )
    end

    def start
      @repl.start
    end
  end
end
