# frozen_string_literal: true

require 'spec_helper'

RSpec.describe 'shell startup' do
  describe 'when Kazam starts' do
    it 'prints the Kazam prompt' do
      output = StringIO.new

      shell = Kazam::Shell.new(output: output)

      shell.start

      expect(output.string).to eq('ψ ')
    end
  end
end
