# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name = 'kazam'
  spec.version = '0.1.0'
  spec.licenses = 'MIT'
  spec.summary = 'The Intelligent Shell'
  spec.description = 'The shell should be as smart as the developer who uses it.'
  spec.author = 'DoctorFateKS'
  spec.required_ruby_version = '>= 3.4.0'

  spec.files = Dir[
    'lib/**/*.rb',
    'bin/*'
  ]

  spec.require_paths = ['lib']

  spec.metadata['rubygems_mfa_required'] = 'false'
end
