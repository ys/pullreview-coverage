# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pullreview/coverage/version'

Gem::Specification.new do |spec|
  spec.name          = 'pullreview-coverage'
  spec.version       = Pullreview::Coverage::VERSION
  spec.authors       = ['Stephan Mestach']
  spec.email         = ['stephan.mestach@8thcolor.com']
  spec.summary       = %q{Collect coverage information and send them to PullReview.com}
  spec.description   = %q{Collect coverage information generated by simplecov and send them to PullReview.com}
  spec.homepage      = 'https://www.pullreview.com'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'simplecov', '>= 0.7.1', '< 1.0.0'
  spec.add_development_dependency 'bundler', '~> 1.5'
  spec.add_development_dependency 'rake'
end
