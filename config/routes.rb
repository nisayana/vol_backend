Rails.application.routes.draw do

resources :dash_list_joiners
resources :lists
resources :organizations
resources :categories
resources :users

post '/login', to: "users#login"
get '/persist', to: "users#persist"
get '/profile', to: "users#profile"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
