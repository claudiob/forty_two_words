$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "stupid_auth/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "stupid_auth"
  s.version     = StupidAuth::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of StupidAuth."
  s.description = "TODO: Description of StupidAuth."

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 4.0.0.rc1"
end
