# frozen_string_literal: true

require 'spec_helper'

RSpec.describe 'shell startup' do
  describe 'when using the exit builtin' do
    it 'stop the shell immediatly' do
      input = StringIO.new("hello\nexit\nworld\n")
      output = StringIO.new

      shell = Kazam::Shell.new(
        input: input,
        output: output
      )

      shell.start

      expect(output.string).to eq(
        "ψ hello: command not found\n" \
        'ψ '
      )
    end
  end
end
