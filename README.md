[![security](https://hakiri.io/github/PHCNetworks/phc-members/master.svg)](https://hakiri.io/github/PHCNetworks/phc-members/master)
[![Code Climate](https://codeclimate.com/github/PHCNetworks/phc-members/badges/gpa.svg)](https://codeclimate.com/github/PHCNetworks/phc-members)
[![Dependency Status](https://gemnasium.com/badges/github.com/PHCNetworks/phc-members.svg)](https://gemnasium.com/github.com/PHCNetworks/phc-members)
[![Gem Version](https://badge.fury.io/rb/phcmembers.svg)](https://badge.fury.io/rb/phcmembers)
  
### PHCMembers(4) (Membership & Directory Engine) Documentation
PHCMembers(4) is an open source membership and listing directory engine purpose built for PHCMembers application.  
  
- Fast setup of membership and web directory modules.
- Directory and listings manager with a web directory API.
- Member's list, contact information and listings manager.
- Easy app integration with views that can be customized.
- User authentication will activate when Devise is installed.
  
#### Step 1 - Add PHCMembers to your gemfile  
  
	gem 'phcmembers', '~> 4.2', '>= 4.2.5'
	bundle install
  
#### Step 2 - Add database migration files  
  
	rails railties:install:migrations
	rails db:migrate
  
#### Step 3 - Mount PHCMembers in your Routes File  
Mount the Engine in your Routes File
  
	mount Phcmembers::Engine, :at => '/'
  
#### Step 4 - Generate Views  
Generate views for customization and app integration.  
  
	rails generate phcmembers:views
  
#### Step 5 - Recompile Assets  
PHCMembers UI requires Bootstrap and Fontawesome to operate.  
  
	rails assets:clobber
	rails assets:precompile
  
#### Additional Info & Help  
  
- [Past Security Patch Notes](https://github.com/PHCNetworks/phc-members/wiki/Critical-Security-Updates)
