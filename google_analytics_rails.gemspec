$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "google_analytics_rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "google_analytics_rails"
  s.version     = GoogleAnalyticsRails::VERSION
  s.authors     = ["Almir Sarajčić"]
  s.email       = ["almir.sarajcic@icloud.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of GoogleAnalyticsRails."
  s.description = "TODO: Description of GoogleAnalyticsRails."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.0.1"

  s.add_development_dependency "sqlite3"
end
