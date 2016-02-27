Phcmember::Engine.routes.draw do
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
