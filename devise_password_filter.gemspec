$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "devise_password_filter/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "devise_password_filter"
  s.version     = DevisePasswordFilter::VERSION
  s.authors     = ["Hedtek", "Liquid Bronze"]
  s.email       = ["gems@hedtek.com"]
  s.homepage    = "https://github.com/hedtek/devise_password_filter"
  s.summary     = "Password filtering for devise to prevent common passwords"
  s.description = <<-DESC
  This project was packaged up into a ruby 3+ gem by Hedtek.
  The code was obtained prior to this from LiquidBronze, full provenence is unknown.
  The code was distributed under MIT licence
  DESC
  s.licenses = ["MIT"]

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "devise"

  s.add_development_dependency "sqlite3"
end
