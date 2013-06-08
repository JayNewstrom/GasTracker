GasTracker::Application.routes.draw do

  namespace :api do
    resources :prices, only: [:index, :create]
    resources :grades, only: [:index]
  end

  root to: 'home#index'
  match '*path' => 'home#index'
end
