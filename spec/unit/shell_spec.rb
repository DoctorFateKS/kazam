# frozen_string_literal: true

require 'spec_helper'

RSpec.describe Kazam::Shell do
  describe '#start' do
    it 'prints an invalid command message' do
      input = StringIO.new("invalid\n")
      output = StringIO.new

      shell = described_class.new(
        input: input,
        output: output
      )

      shell.start

      expect(output.string)
        .to include('invalid: command not found')
    end
  end
end
