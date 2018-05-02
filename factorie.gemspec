lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "factorie/version"

Gem::Specification.new do |spec|
  spec.name          = "factorie"
  spec.version       = Factorie::VERSION
  spec.authors       = ["teitei-tk"]
  spec.email         = ["teitei.tk@gmail.com"]

  spec.summary       = "urge migration to factory_boy gently"
  spec.homepage      = "https://github.com/teitei-tk/factorie"
  spec.license       = "MIT"

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "factory_bot"
  spec.add_dependency "factory_girl"
  spec.add_dependency "activesupport"

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
