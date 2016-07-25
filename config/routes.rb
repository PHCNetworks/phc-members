Phcmembers::Engine.routes.draw do

	# Dashboard (Engine Root)
	get 'dashboard/mains/index', :path => "dashboard"

	# Application API
	namespace :api do

		# Routes for API
		resources :catsapi, defaults: {format: 'json'} do
			resources :listapi
		end

	end

	# Application Client Backend

	# Members Section
	namespace :members do

		# Members Main Index
		root 'mains#index'

		# Member Routes
		resources :addresses, class_name: 'Phcmembers::Member::Address'
		resources :profiles, class_name: 'Phcmembers::Member::Profile'

	end

	# Directory Section
	namespace :directory do

		# Members Main Index
		root 'categories#index'

		resources :categories, class_name: 'Phcmembers::Directory::Category'
		resources :listings, class_name: 'Phcmembers::Directory::Listing'

	end

	# Connection Section
	namespace :connections do
		resources :memberaddresses, class_name: 'Phcmembers::Connections::Memberaddress'
		resources :memberlistings, class_name: 'Phcmembers::Connections::Memberlisting'
		resources :categorylistings, class_name: 'Phcmembers::Connections::Categorylisting'
	end

end
