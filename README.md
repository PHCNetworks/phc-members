[![security](https://hakiri.io/github/PHCNetworks/phc-members/master.svg)](https://hakiri.io/github/PHCNetworks/phc-members/master)
[![Code Climate](https://codeclimate.com/github/PHCNetworks/phc-members/badges/gpa.svg)](https://codeclimate.com/github/PHCNetworks/phc-members)
[![Dependency Status](https://gemnasium.com/badges/github.com/PHCNetworks/phc-members.svg)](https://gemnasium.com/github.com/PHCNetworks/phc-members)
[![Gem Version](https://badge.fury.io/rb/phcmembers.svg)](https://badge.fury.io/rb/phcmembers)
  
### PHCMembers(6) (Membership & Directory Engine) Documentation
PHCMembers(6) rails engine to manage membership information and directory listings.  
  
- Fast setup of membership and web directory modules.
- Directory and listings manager with a web directory API.
- Member's list, contact information and listings manager.
- Easy app integration with views that can be customized.
- User authentication will activate when Devise is installed.
  
#### Step 1 - Add PHCMembers to your gemfile  
  
	gem 'phcmembers', '~> 6.1'
	bundle install
  
#### Step 2 - Add PHCMembers Database Tables  
To copy PHCMembers' requried database migrations, copy each command individually to your terminal's command line.  
  
	rails phcmembers:install:migrations
	rails db:migrate
  
#### Step 3 - Recompile Assets  
To properly function re-compile your application's assets to copy over requried files.
    
	rails assets:clobber
	rails assets:precompile  

#### Step 4 - Generate Views  (Customization)
Generate views for customization and app integration.  
  
	rails generate phcmembers:views
  
#### Additional Information 
  
- [Past Security Patch Notes](https://github.com/PHCNetworks/phc-members/wiki/Critical-Security-Updates)
