# frozen_string_literal: true

require 'spec_helper'

RSpec.describe Kazam::Builtins::Exit do
  describe '#execute' do
    it 'signals the shell to stop' do
      builtin = described_class.new

      result = builtin.execute

      expect(result).to eq(:exit_shell)
    end
  end
end
