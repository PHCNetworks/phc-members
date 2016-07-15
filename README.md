[![security](https://hakiri.io/github/PHCNetworks/phc-members/master.svg)](https://hakiri.io/github/PHCNetworks/phc-members/master)
[![Code Climate](https://codeclimate.com/github/PHCNetworks/phc-members/badges/gpa.svg)](https://codeclimate.com/github/PHCNetworks/phc-members)
[![Issue Count](https://codeclimate.com/github/PHCNetworks/phc-members/badges/issue_count.svg)](https://codeclimate.com/github/PHCNetworks/phc-members)
[![Gem Version](https://badge.fury.io/rb/phcmembers.svg)](https://badge.fury.io/rb/phcmembers)
  
### PHCMembers(3) (Membership & Directory Engine) Documentation
PHCMembers(3) is an open source membership and listing directory engine purpose built for PHCMembers application.  
  
- Fast setup of membership and web directory modules.
- Directory and listings manager with a web directory API.
- Member's list, contact information and listings manager.
- Easy app integration with views that can be customized.
- User authetication will activate when Devise is installed.
  
#### Step 1 - Add PHCMembers to your gemfile  
  
	gem 'phcmembers', '~> 3.0', '>= 3.0.1'
	bundle exec install
  
#### Step 2 - Add database migration files  
  
	rake railties:install:migrations
	rake db:migrate
  
#### Step 3 - Mount PHCMembers in your Routes File  
Mount the Engine in your Routes File
  
	mount Phcmembers::Engine, :at => '/'
  
#### Step 4 - Generate Views  
Generate views for customization and app integration.  
  
	rails generate phcmembers:views
  
#### Step 5 - Recompile Assets  
PHC-Members UI requires bootstrap and fontawesome to operate.  
  
	rake assets:clobber
	rake assets:precompile
  
#### Additional Info & Help  
  
[Past Security Patch Notes](https://github.com/PHCNetworks/phc-members/wiki/Critical-Security-Updates)
  