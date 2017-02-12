$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "google_analytics_rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "google_analytics_rails"
  s.version     = GoogleAnalyticsRails::VERSION
  s.authors     = ["Almir Sarajčić"]
  s.email       = ["almir.sarajcic@icloud.com"]
  s.homepage    = "https://github.com/almirsarajcic/google_analytics_rails"
  s.summary     = "Google Analytics for Ruby on Rails"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.0"
  s.add_dependency "coffee-rails", "~> 4.2"
end
