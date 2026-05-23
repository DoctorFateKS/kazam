# frozen_string_literal: true

require 'stringio'

require 'kazam'

RSpec.configure do |config|
  config.disable_monkey_patching!

  config.order = :random

  Kernel.srand config.seed
end
