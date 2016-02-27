Phcmember::Engine.routes.draw do
  namespace :members do
    resources :mains
  end
end
