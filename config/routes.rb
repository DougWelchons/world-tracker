Rails.application.routes.draw do
  get "/", to: "welcome#index"
  get "/users/login", to: "users#login"
  resources :users, only: [:new, :show]
end
