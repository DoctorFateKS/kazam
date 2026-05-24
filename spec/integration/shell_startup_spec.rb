# frozen_string_literal: true

require 'spec_helper'

RSpec.describe 'shell startup' do
  describe 'when an invalid command is entered' do
    it 'keep prompting for command' do
      input = StringIO.new("hello\nworld\n")
      output = StringIO.new

      shell = Kazam::Shell.new(
        input: input,
        output: output
      )

      shell.start

      expect(output.string).to eq(
        "ψ hello: command not found\n" \
        "ψ world: command not found\n" \
        'ψ '
      )
    end
  end
end
