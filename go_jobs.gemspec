$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "go_jobs/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "go_jobs"
  s.version     = GoJobs::VERSION
  s.authors     = ["João Carlos Ottobboni"]
  s.email       = ["jcottobboni@gmail.com"]
  s.homepage    = "http://www.gorails.com"
  s.summary     = "Jobs engine"
  s.description = "Jobs engine"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "draper"
  s.add_dependency "rails"

  s.add_development_dependency "sqlite3"

end
