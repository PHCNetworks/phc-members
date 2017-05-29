Phcmembers::Engine.routes.draw do

  # Dashboard (Engine Root)
  get 'modules/dashboards/index'

  # Application API
  namespace :api do
    # Routes for API
    resources :catsapi, defaults: {format: 'json'} do
      resources :listapi
    end
  end

  # Members Section
  namespace :member do
    # Members Main Index
    root 'profiles#index'
    # Member Routes
    resources :profiles, class_name: 'Phcmembers::Member::Profile' do
      resources :listings, class_name: 'Phcmembers::Member::Listing'
      resources :addresses, class_name: 'Phcmembers::Member::Address'
    end
  end

  # Directory Section
  namespace :directory do
    # Members Main Index
    root 'categories#index'
    resources :categories, class_name: 'Phcmembers::Directory::Category'
    resources :categorylistings, class_name: 'Phcmembers::Directory::Categorylisting'
  end

end
