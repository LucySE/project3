Rails.application.routes.draw do

# redirects you when you login
root to: 'pages#home'
#Login/logout routes

#show login form
get '/login' =>'session#new'
#form submits to here (redirects)
post '/login' => 'session#create'
delete '/login' => 'session#destroy'

#create all 7 crud routes for the user model
resources :users

resources :dogparks
get '/search' => 'dogparks#search'

resources :bookings
end
