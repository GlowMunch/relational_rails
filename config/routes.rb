Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  # Defines the root path route ("/")
  # root "articles#index"

  get "/people", to: "people#index" #retrieve resourse /people
  get "/people/:id", to: "people#show"
  get "/hikes", to: "hikes#index"
  get "/hikes/:id", to: "hikes#show"
end
