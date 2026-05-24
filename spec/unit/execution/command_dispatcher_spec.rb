# frozen_string_literal: true

require 'spec_helper'

RSpec.describe Kazam::Execution::CommandDispatcher do
  describe '#dispatch' do
    it 'returns exit signal for exit command' do
      output = StringIO.new

      dispatcher = described_class.new(
        output: output
      )

      result = dispatcher.dispatch('exit')

      expect(result).to eq(:exit_shell)
    end

    it 'prints command not found for invalid commands' do
      output = StringIO.new

      dispatcher = described_class.new(
        output: output
      )

      dispatcher.dispatch('hello')

      expect(output.string).to eq(
        "hello: command not found\n"
      )
    end
  end
end
