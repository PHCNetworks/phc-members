$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "phcmember/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "phcmember"
  s.version     = Phcmember::VERSION
  s.authors     = ["Brad Potts"]
  s.email       = ["bradley.j.potts@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Phcmember."
  s.description = "TODO: Description of Phcmember."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 4.2.5"

  s.add_development_dependency "sqlite3"
end
