Phcmember::Engine.routes.draw do

	# Application Client Backend
	namespace :members do

		# Members Main Index
		root 'mains#index'

		# Member Routes
		resources :mains do 
			resources :listings
			resources :contacts
		end

	end

	namespace :directory do

		# Directory Main Index
		root 'categories#index'

		# Directory Routes
		resources :categories
		resources :catlists

	end

end
