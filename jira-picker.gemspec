# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "jira-picker"
  spec.version       = '0.0.1'
  spec.authors       = ["Gary Tierney"]
  spec.email         = ["gary.tierney@gmx.com"]
  spec.summary       = %q{Easily open JIRA issues from a menu.}
  spec.description   = %q{A simple util which displays a dropdown
                          auto-completing menu with a list of current JIRA
                          issues, and opens the selected issue in the browser}
  spec.homepage      = "https://github.com/garyttierney/jirapicker"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = ['jira_picker']
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "json"
  spec.add_dependency "jira-ruby", "~> 0.1.10"
  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
