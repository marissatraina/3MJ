Rails.application.routes.draw do
  get '/cohorts/:id/index2', to: 'cohorts#index2'
  resources :users
  resources :sessions
  resources :cohorts do
    resources :pitches do
      resources :r1votes
      resources :r2votes

    end
  end
  resources :r2votes
  root 'sessions#index'
end
