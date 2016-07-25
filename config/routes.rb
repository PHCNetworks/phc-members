Phcmembers::Engine.routes.draw do

  namespace :directory do
    resources :categories
  end
  namespace :connections do
    resources :memberaddresses
  end
  namespace :connections do
    resources :memberlistings
  end
  namespace :connections do
    resources :categorylistings
  end
  namespace :directory do
    resources :listings
  end
  namespace :member do
    resources :addresses
  end
  namespace :member do
    resources :profiles
  end
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

	namespace :members do

		# Members Main Index
		root 'mains#index'

		# Member Routes
		resources :mains, class_name: 'Phcmembers::Members::Main' do

			# Member Routes
			resources :businesses, class_name: 'Phcmembers::Members::Business'
			resources :contacts, class_name: 'Phcmembers::Members::Contact'
			
			# Auto Complete Routes
			get :autocomplete_members_contact_mccompanyname, :on => :collection

		end

	end

	namespace :directory do

		# Members Main Index
		root 'categories#index'

		resources :categories, class_name: 'Phcmembers::Directory::Category'
		resources :listings, class_name: 'Phcmembers::Directory::Listing'

	end

end
