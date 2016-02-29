$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "phcmembers/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|

	s.name        = "phcmembers"
	s.version     = Phcmembers::VERSION
	s.authors     = ["BradPotts"]
	s.email       = ["bradley.j.potts@gmail.com"]
	s.homepage    = "http:/phcmemberss.com"
	s.summary     = "Membership & Directory Manager"
	s.description = "Manage your organization's members and website's membership directory."
	s.license     = "Proprietary Non-Commercial"

	s.files = Dir["{app,config,db,lib}/**/*", "LICENSE", "Rakefile", "README.md"]

	# Main Dependencies
	s.add_dependency "rails", "~> 4.2.5"
	
	#Security Dependencies
	s.add_dependency "devise", '~> 3.5', '>= 3.5.6'

	# UI & Frontend Elements
	s.add_dependency 'jquery-rails', '~> 4.0', '>= 4.0.5'
	s.add_dependency 'bootstrap-sass', '~> 3.3', '>= 3.3.6'
	s.add_dependency 'font-awesome-rails', '~> 4.5'
	s.add_dependency 'sass-rails', '~> 5.0', '>= 5.0.4'
	s.add_dependency 'gravtastic', '~> 3.2', '>= 3.2.6'
	s.add_dependency 'figaro', '~> 1.1', '>= 1.1.1'

	# Development & Testing Dependencies
	s.add_development_dependency 'sqlite3', '~> 1.3'
	s.add_development_dependency 'database_cleaner', '~> 1.5'

	s.add_development_dependency 'factory_girl_rails', '~> 4.4', '>= 4.4.1'
	s.add_development_dependency 'rspec-rails', '~> 3.4'
	s.add_development_dependency 'capybara', '~> 2.6'
	s.add_development_dependency 'better_errors', '~> 2.1', '>= 2.1.1'

	s.add_development_dependency 'faker', '~> 1.6'
	s.add_development_dependency 'selenium-webdriver', '~> 2.52'

end
