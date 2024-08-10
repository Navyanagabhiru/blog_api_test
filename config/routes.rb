Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
<<<<<<< HEAD
  resources :posts, only: [:index, :show, :create]
=======
>>>>>>> 685cd3b29921dc9b7f9b132279143a05ec9326b3

  # Defines the root path route ("/")
  # root "posts#index"
end
