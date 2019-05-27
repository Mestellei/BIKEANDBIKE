Rails.application.routes.draw do
  devise_for :users
  root to: 'bikes#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :bikes do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:index, :show, :edit, :update, :destroy] do
    resources :reviews, only: [:new, :create]
  end
end
