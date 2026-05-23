# frozen_string_literal: true

require 'spec_helper'

RSpec.describe Kazam::Repl::PromptRenderer do
  describe '#render' do
    it 'returns the Kazam prompt' do
      renderer = described_class.new

      expect(renderer.render).to eq('ψ ')
    end
  end
end
