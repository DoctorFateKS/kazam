# frozen_string_literal: true

require 'spec_helper'

RSpec.describe Kazam::Repl::InputReader do
  describe '#read' do
    it 'reads user input' do
      input = StringIO.new("xyz\n")

      reader = described_class.new(input: input)

      expect(reader.read).to eq('xyz')
    end
  end
end
