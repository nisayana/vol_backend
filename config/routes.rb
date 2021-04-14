Rails.application.routes.draw do

resources :dash_list_joiners
resources :lists
resources :organizations
resources :categories

get '/users/persist', to: "users#persist"
resources :users

post '/user_login', to: "users#login"
post '/organization_login', to: "organizations#login"
get '/profile', to: "users#profile"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
