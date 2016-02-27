Phcmember::Engine.routes.draw do
  namespace :directory do
    resources :catlists
  end
  namespace :directory do
    resources :categories
  end
  namespace :members do
    resources :contacts
  end
  namespace :members do
    resources :listings
  end
  namespace :members do
    resources :mains
  end
end
