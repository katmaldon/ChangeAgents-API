Rails.application.routes.draw do
  resources :user_resources
  resources :user_events
  resources :resources
  resources :events
  resources :users

  #get 'events', to: 'events#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
