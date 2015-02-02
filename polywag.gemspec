$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "polywag/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "polywag"
  s.version     = Polywag::VERSION
  s.authors     = ["Jeff Fendley"]
  s.email       = ["jeff.fendley@gmail.com"]
  s.homepage    = "https://bitbucket.org/cteh/polywag"
  s.summary     = "A Rails Engine for common controller helpers"
  s.description = "A Rails Engine for common controller helpers"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  # s.add_dependency "rails", "~> 4.1.6", ">= 4.2.0"
end
