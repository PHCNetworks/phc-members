$:.push File.expand_path("../lib", __FILE__)

# Gem Versioning
require "phcmembers/version"

# Gem Specification Information
Gem::Specification.new do |spec|

  spec.name        = "phcmembers"
  spec.version     = Phcmembers::VERSION
  spec.authors     = ["BradPotts"]
  spec.email       = ["info@phcnetworks.net"]
  spec.homepage    = "https://phcnetworks.net/"
  spec.summary     = "PHCMembers(8) - Rails Membership Management Engine"
  spec.description = "PHCMembers(8) rails engine to manage membership information and directory listings."
  spec.license     = "MIT"

  #Load Engine Files
  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  # Main Dependencies
  spec.add_dependency 'rails', '~> 5.0', '>= 5.0.2'
  spec.add_dependency 'pg', '~> 0.20.0'
  spec.add_dependency 'paper_trail', '~> 7.0', '>= 7.0.1'

  # UI & Frontend Dependencies
  spec.add_dependency 'jquery-rails', '~> 4.3', '>= 4.3.1'
  spec.add_dependency 'jquery-ui-rails', '~> 6.0', '>= 6.0.1'
  spec.add_dependency 'bootstrap-sass', '~> 3.3', '>= 3.3.7'
  spec.add_dependency 'font-awesome-rails', '~> 4.7', '>= 4.7.0.1'
  spec.add_dependency 'sass-rails', '~> 5.0', '>= 5.0.6'
  spec.add_dependency 'country_select', '~> 3.0'
  spec.add_dependency 'gravtastic', '~> 3.2', '>= 3.2.6'

  # WYSIWYG Editor Dependencies
  spec.add_dependency 'tinymce-rails', '~> 4.5', '>= 4.5.6'

  # PHCEngines & Theme Dependencies
  spec.add_dependency 'phcadmin3', '~> 2.1', '>= 2.1.2'
  spec.add_dependency 'phctitleseo', '~> 5.1', '>= 5.1.2'
  spec.add_dependency 'phcnotifi', '~> 4.1', '>= 4.1.2'

  # API Dependencies
  spec.add_dependency 'oj', '~> 2.18', '>= 2.18.5'
  spec.add_dependency 'rabl', '~> 0.13.1'
  spec.add_dependency 'multi_json', '~> 1.12', '>= 1.12.1'
  spec.add_dependency 'responders', '~> 2.3'

  # Upload & Media Dependencies
  spec.add_dependency 'carrierwave', '~> 1.0'
  spec.add_dependency 'cloudinary', '~> 1.7'

  # Development & Testing Dependencies
  spec.add_development_dependency 'rspec-rails', '~> 3.5', '>= 3.5.2'
  spec.add_development_dependency 'factory_girl_rails', '~> 4.8'
  spec.add_development_dependency 'capybara', '~> 2.13'
  spec.add_development_dependency 'byebug', '~> 9.0', '>= 9.0.6'

  spec.add_development_dependency 'sqlite3', '~> 1.3', '>= 1.3.13'
  spec.add_development_dependency 'database_cleaner', '~> 1.5', '>= 1.5.3'

  spec.add_development_dependency 'faker', '~> 1.7', '>= 1.7.3'
  spec.add_development_dependency 'launchy', '~> 2.4', '>= 2.4.3'
  spec.add_development_dependency 'selenium-webdriver', '~> 3.3'

end