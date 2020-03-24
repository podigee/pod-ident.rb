# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pod_ident/version'

Gem::Specification.new do |spec|
  spec.name = 'pod_ident'
  spec.version = PodIdent::VERSION
  spec.authors = ['Podigee GmbH']
  spec.email = ['hello@podigee.com']

  spec.summary = 'Identifies podcast client user agents'
  spec.description = <<~HEREDOC
    Library to identify podcast client user agents and translate them into human readable information.'
  HEREDOC
  spec.homepage = 'https://www.podigee.com'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'rake', '>= 12.3.3'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rspec_junit_formatter'
end
