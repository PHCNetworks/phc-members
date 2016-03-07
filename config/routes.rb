Phcmembers::Engine.routes.draw do

	if defined?(Mtdevise) 
		constraints(Mtdevise::Constraints::SubdomainRequired) do

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
				resources :categories do
					resources :catlists
				end
			end
		end
		
	else
		
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
				resources :categories do
					resources :catlists
				end
			end

	end

end
