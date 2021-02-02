Rails.application.routes.draw do
 scope '/api' do
  post 'user_token' => 'user_token#create'
  post '/users' => 'users#create'
end
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


get '/search' => 'dogparks#search'
resources :dogparks
resources :bookings
end
