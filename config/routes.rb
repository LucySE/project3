Rails.application.routes.draw do
post '/user_token' => 'user_token#create'

post '/user/token' => 'user_token#create'
get '/users/current' => 'users#current'



# redirects you when you login

#Login/logout routes

#show login form
get '/login' =>'session#new'
#form submits to here (redirects)
post '/login' => 'session#create'
delete '/login' => 'session#destroy'

#create all 7 crud routes for the user model
resources :users

post '/dogparks/:id/book' => 'dogparks#create_booking'
get '/search' => 'dogparks#search'
resources :dogparks
resources :bookings
end
