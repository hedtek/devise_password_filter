$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "devise_password_filter/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "devise_password_filter"
  s.version     = DevisePasswordFilter::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of DevisePasswordFilter."
  s.description = "TODO: Description of DevisePasswordFilter."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "devise"

  s.add_development_dependency "sqlite3"
end
