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
  spec.summary     = "Rails 5.1 Engine - PHCMembers(2017)"
  spec.description = "PHCMembers(2017) Rails 5.1 engine to manage membership information and directory listings."
  spec.license     = "MIT"

  #Load Engine Files
  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  # Main Dependencies
  spec.add_dependency 'rails', '~> 5.1', '>= 5.1.2'
  spec.add_dependency 'pg', '~> 0.21.0'
  spec.add_dependency 'paper_trail', '~> 7.1'

  # UI & Frontend Dependencies
  spec.add_dependency 'jquery-rails', '~> 4.3', '>= 4.3.1'
  spec.add_dependency 'jquery-ui-rails', '~> 6.0', '>= 6.0.1'
  spec.add_dependency 'bootstrap-sass', '~> 3.3', '>= 3.3.7'
  spec.add_dependency 'font-awesome-rails', '~> 4.7', '>= 4.7.0.2'
  spec.add_dependency 'sass-rails', '~> 5.0', '>= 5.0.6'
  spec.add_dependency 'webpacker', '~> 2.0'
  spec.add_dependency 'country_select', '~> 3.0'
  spec.add_dependency 'gravtastic', '~> 3.2', '>= 3.2.6'

  # WYSIWYG Editor Dependencies
  spec.add_dependency 'tinymce-rails', '~> 4.6', '>= 4.6.4'

  # API Dependencies
  spec.add_dependency 'oj', '~> 3.3', '>= 3.3.2'
  spec.add_dependency 'rabl', '~> 0.13.1'
  spec.add_dependency 'multi_json', '~> 1.12', '>= 1.12.1'
  spec.add_dependency 'responders', '~> 2.4'

  # Upload & Media Dependencies
  spec.add_dependency 'carrierwave', '~> 1.1'
  spec.add_dependency 'cloudinary', '~> 1.8', '>= 1.8.1'

  # URL Dependencies
  spec.add_dependency 'friendly_id', '~> 5.2', '>= 5.2.1'

  # PHCEngine Dependencies
  spec.add_dependency 'phctitleseo', '~> 7.3', '>= 7.3.1'
  spec.add_dependency 'phcnotifi', '~> 6.3', '>= 6.3.1'

  # PHCTheme Dependencies
  spec.add_dependency 'phctheme1', '~> 14.5', '>= 14.5.1'
  spec.add_dependency 'phctheme2', '~> 5.7', '>= 5.7.1'

  # PHCAdmin Dependencies
  spec.add_dependency 'phcadmin1', '~> 10.5', '>= 10.5.1'
  spec.add_dependency 'phcadmin2', '~> 8.5', '>= 8.5.1'
  spec.add_dependency 'phcadmin3', '~> 5.5', '>= 5.5.1'

  # Development & Testing Dependencies
  spec.add_development_dependency 'rspec-rails', '~> 3.6'
  spec.add_development_dependency 'factory_girl_rails', '~> 4.8'
  spec.add_development_dependency 'capybara', '~> 2.14', '>= 2.14.4'
  spec.add_development_dependency 'nokogiri', '~> 1.8'

  spec.add_development_dependency 'byebug', '~> 9.0', '>= 9.0.6'
  spec.add_development_dependency 'sqlite3', '~> 1.3', '>= 1.3.13'
  spec.add_development_dependency 'database_cleaner', '~> 1.6', '>= 1.6.1'

  spec.add_development_dependency 'faker', '~> 1.8', '>= 1.8.3'
  spec.add_development_dependency 'launchy', '~> 2.4', '>= 2.4.3'
  spec.add_development_dependency 'selenium-webdriver', '~> 3.4', '>= 3.4.3'

end
