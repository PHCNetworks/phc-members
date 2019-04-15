Phcmembers::Engine.routes.draw do

  # Mount Accounts Engine
  mount Phcaccounts::Engine, :at => '/'

  # Application API
  namespace :api do
    namespace :v1 do
      # Routes for API
      resources :categories, defaults: {format: 'json'} do
        resources :listings, defaults: {format: 'json'}
      end
    end
  end

  # Application Dashboard
  get 'dashboard', to: 'member/dashboards#index'

  # Application Members Management
  namespace :member do
    # Member Routes
    resources :profiles, class_name: 'Phcmembers::Member::Profile' do
      resources :listings, class_name: 'Phcmembers::Member::Listing'
      resources :addresses, class_name: 'Phcmembers::Member::Address'
    end
  end

  # Application Directory Management
  namespace :directory do
    # Members Main Index
    resources :categories, class_name: 'Phcmembers::Directory::Category'
  end

end
