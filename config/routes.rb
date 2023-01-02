Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "packs#index"
  get "/packs", to: "packs#index"
  get "/packs/:id", to: "packs#show"
end
