Phcmembers::Engine.routes.draw do

  namespace :directory do
    resources :categories
  end
  namespace :directory do
    resources :listings
  end
  namespace :members do
    resources :mains
  end
  namespace :members do
    resources :contacts
  end
  namespace :members do
    resources :businesses
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
		resources :mains do

			# Member Routes
			resources :businesses
			resources :contacts
			
			# Auto Complete Routes
			get :autocomplete_members_contact_mccompanyname, :on => :collection

		end

	end

	namespace :directory do

		# Members Main Index
		root 'categories#index'

		resources :categories do
			resources :listings
		end

	end

end
