Rails.application.routes.draw do
  resources :pins
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  get 'system/:folder/:model/:id/:style/:filename', to: 'images#show', constraints: { folder: /[0-9a-zA-Z_\/]+/, model: /[0-9a-zA-Z_]+/, id: /\d+/, style: /[0-9a-zA-Z_]+/, filename: /[0-9a-zA-Z_\-\.]+/ }

  # Defines the root path route ("/")
  root "pins#index"
  get 'home/about'
end
