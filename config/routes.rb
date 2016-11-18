Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  resources :sessions
  resources :cohorts do
    resources :pitches do
      resources :r1votes
    end
  end
  resources :r2votes
  root 'sessions#index'
end
