# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'soopr/version'

Gem::Specification.new do |spec|
  spec.name          = "soopr"
  spec.version       = Soopr::VERSION
  spec.authors       = ["Nils Blum-Oeste"]
  spec.email         = ["nblumoeste@gmail.com"]

  spec.summary       = %q{Simple CLI tool to list open pull requests of a Github team.}
  spec.homepage      = "https://github.com/nblumoe/soopr"
  spec.license       = "mit"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency('rdoc')
  spec.add_development_dependency('aruba')
  spec.add_development_dependency('rake')
  spec.add_dependency('methadone', '~> 1.9.2')
  spec.add_development_dependency('test-unit')
  spec.add_dependency('octokit', '~> 4.0')
  spec.add_dependency('netrc', '~>0.11.0')

end
