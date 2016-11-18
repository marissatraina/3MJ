Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  resources :sessions
  resources :pitches
  resources :r1votes
  resources :r2votes
  resources :cohorts
  root 'sessions#new'
end
