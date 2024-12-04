# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rubycritic/version'

Gem::Specification.new do |spec|
  spec.name          = 'rubycritic'
  spec.version       = RubyCritic::VERSION
  spec.authors       = ['Guilherme Simoes']
  spec.email         = ['guilherme.rdems@gmail.com']
  spec.description   = 'RubyCritic is a tool that wraps around various static analysis gems ' \
                       'to provide a quality report of your Ruby code.'
  spec.summary       = 'RubyCritic is a Ruby code quality reporter'
  spec.homepage      = 'https://github.com/whitesmith/rubycritic'
  spec.license       = 'MIT'
  spec.required_ruby_version = '>= 3.1.0'

  spec.files = [
    'CHANGELOG.md',
    'CONTRIBUTING.md',
    'Gemfile',
    'LICENSE.txt',
    'README.md',
    'ROADMAP.md',
    'Rakefile'
  ]
  spec.files += `git ls-files lib`.split("\n")

  spec.executables   = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  spec.require_path  = 'lib'

  spec.add_dependency 'churn'
  spec.add_dependency 'flay', '~> 2.13'
  spec.add_dependency 'flog', '~> 4.7'
  spec.add_dependency 'launchy', '>= 2.5.2'
  spec.add_dependency 'parser', '>= 3.3.0.5'
  spec.add_dependency 'rainbow', '~> 3.1.1'
  spec.add_dependency 'reek', '~> 6.3.0', '< 7.0'
  spec.add_dependency 'rexml'
  spec.add_dependency 'ruby_parser', '~> 3.21'
  spec.add_dependency 'simplecov', '>= 0.22.0'
  spec.add_dependency 'tty-which', '~> 0.5.0'
  spec.add_dependency 'virtus', '~> 2.0'

  spec.add_development_dependency 'aruba', '~> 2.2.0'
  spec.add_development_dependency 'bundler', '>= 2.0.0'
  if RUBY_PLATFORM == 'java'
    spec.add_development_dependency 'pry-debugger-jruby'
  else
    spec.add_development_dependency 'byebug', '~> 11.0', '>= 10.0'
  end
  spec.add_development_dependency 'cucumber', '~> 9.2.0', '!= 9.0.0'
  spec.add_development_dependency 'diff-lcs', '~> 1.3'
  spec.add_development_dependency 'fakefs', '~> 2.5.0'
  spec.add_development_dependency 'mdl', '~> 0.13.0', '>= 0.12.0'
  spec.add_development_dependency 'minitest', '~> 5.25.2', '>= 5.3.0'
  spec.add_development_dependency 'minitest-around', '~> 0.5.0', '>= 0.4.0'
  spec.add_development_dependency 'mocha', '~> 2.6.1'
  spec.add_development_dependency 'rake', '~> 13.2.0', '>= 11.0.0'
  spec.add_development_dependency 'rexml', '>= 3.2.0'
  spec.add_development_dependency 'rubocop', '~> 1.69.0', '>= 1.54.0'
  spec.add_development_dependency 'rubocop-minitest'
  spec.add_development_dependency 'rubocop-performance'
  spec.add_development_dependency 'rubocop-rake'
  spec.metadata['rubygems_mfa_required'] = 'true'
end
