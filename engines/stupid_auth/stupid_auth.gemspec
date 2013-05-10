$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "stupid_auth/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "stupid_auth"
  s.version     = StupidAuth::VERSION
  s.authors     = ['claudiob']
  s.email       = ['claudiob@gmail.com']
  s.homepage    = 'http://github.com/claudiob/stupid_auth'
  s.summary     = 'Simplest authentication ever: just click Log In'
  s.description = 'Provides two routes (POST login, DELETE logout) and a controller method/helper logged_in?'

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 4.0.0.rc1"
end
