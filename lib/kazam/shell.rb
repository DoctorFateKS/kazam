# frozen_string_literal: true

module Kazam
  # Shell is responsible for initializing and starting a shell session
  class Shell
    def initialize(input:, output:)
      @output = output
      @prompt_renderer = Repl::PromptRenderer.new
      @input_reader = Repl::InputReader.new(input: input)
    end

    def start
      print_prompt

      command = read_command

      print_invalid_command(command)
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
      @output.puts("#{command}: command not found")
    end
  end
end
