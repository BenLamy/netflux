Rails.application.routes.draw do
  get 'likes/new'
  get 'movies/new'
  devise_for :users
  # root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  root to: "movies#index"

  resources :movies, only: [:index, :show, :new, :create] do
    resources :likes, only: [:index, :show, :create, :new]
  end

  resources :likes, only: [:index, :destroy]

end
