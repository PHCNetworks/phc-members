### PHCMembers(2019) (Membership & Directory Engine) Documentation
PHCMembers(2019) rails engine to manage membership information and directory listings.  

* Fast setup of membership and web directory modules.
* Directory and listings manager with a web directory API.
* Member's list, contact information, and listings manager.
* Easy app integration with views that can be customized.

#### Step 1 - Add PHCMembers to your gemfile and run the commands below.   

	gem 'phcmembers'
	bundle install

#### Step 2 - Add PHCMembers Database Tables  
To copy required database migrations, copy each command individually to your terminal's command line.  

	rails railties:install:migrations
	rails db:migrate

#### Step 3 - Mount PHCMembers & Add Routes
Mount PHCMembers by adding the code below to your routes file.  

	mount Phcmembers::Engine, :at => '/'

#### Step 4 - Recompile Assets  
To properly function re-compile your application's assets to copy over required files.

	rails assets:clobber
	rails assets:precompile  

#### Step 5 - Generate Views  (Customization)
Generate views for customization and app integration.  

	rails generate phcmembers:views

#### Additional Information
