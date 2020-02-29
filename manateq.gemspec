
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "manateq/version"

Gem::Specification.new do |spec|
  spec.name          = "manateq"
  spec.version       = Manateq::VERSION
  spec.authors       = ["nuha almozaini"]
  spec.email         = ["nuha.mozaini@gmail.com"]

  spec.summary       = "Manateq - a handy library for searching and listing regions, cities and districts in Saudi Arabia"
  spec.homepage      = "https://github.com/nuhamozaini/Manateq"
  spec.license       = "MIT"


  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 12.3"
  spec.add_development_dependency "rspec", "~> 3.0"
end
