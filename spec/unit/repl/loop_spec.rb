# frozen_string_literal: true

require 'spec_helper'

RSpec.describe Kazam::Repl::Loop do
  describe '#start' do
    it 'runs the REPL cycle until EOF' do
      input = StringIO.new(
        "hello\n"
      )

      output = StringIO.new

      repl = described_class.new(
        input: input,
        output: output
      )

      repl.start

      expect(output.string).to eq(
        "ψ hello: command not found\n" \
        'ψ '
      )
    end
  end
end
