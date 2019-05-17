Phcmembers::Engine.routes.draw do

  # API Routes
  namespace :api, :path => "", :constraints => {:subdomain => "api"} do
    namespace :v1 do
      resources :categories, defaults: {format: 'json'} do
        resources :listings, defaults: {format: 'json'}
      end
    end
  end

  # Dashboard Routes
  get 'dashboard', to: 'member/dashboards#index'

  # Member Routes
  namespace :member do
    resources :profiles, class_name: 'Phcmembers::Member::Profile' do
      resources :listings, class_name: 'Phcmembers::Member::Listing'
      resources :addresses, class_name: 'Phcmembers::Member::Address'
    end
  end

  # Directory Routes
  namespace :directory do
    resources :categories, class_name: 'Phcmembers::Directory::Category'
  end

  # PHCAccounts Routes
  mount Phcaccounts::Engine, :at => '/'

end
