# frozen_string_literal: true

module Kazam
  # Shell is responsible for initializing and starting a shell session
  class Shell
    def initialize(output:)
      @output = output
      @prompt_renderer = Repl::PromptRenderer.new
    end

    def start
      @output.write(prompt)
    end

    private

    def prompt
      @prompt_renderer.render
    end
  end
end
