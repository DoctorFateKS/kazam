# frozen_string_literal: true

require 'spec_helper'

RSpec.describe 'shell startup' do
  describe 'when an invalid command is entered' do
    it 'prints a command not found message' do
      input = StringIO.new("xyz\n")
      output = StringIO.new

      shell = Kazam::Shell.new(
        input: input,
        output: output
      )

      shell.start

      expect(output.string).to eq(
        "ψ xyz: command not found\n"
      )
    end
  end
end
