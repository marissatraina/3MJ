Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  resources :sessions
  resources :pitches do
    resources :r1votes
  end
  resources :r2votes
  resources :cohorts
  root 'sessions#index'
end
