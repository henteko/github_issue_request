# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'github_issue_request/version'

Gem::Specification.new do |spec|
  spec.name          = "GithubIssueRequest"
  spec.version       = GithubIssueRequest::VERSION
  spec.authors       = ["henteko"]
  spec.email         = ["henteko07@gmail.com"]
  spec.description   = %q{Create request github issue}
  spec.summary       = %q{User create request github issue}
  spec.homepage      = "https://github.com/henteko/github_issue_request"
  spec.license       = "MIT"
  
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 3.3.0"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
end
