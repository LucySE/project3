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
  # get 'session/new'
  # get 'bookings/index'
  # get 'bookings/show'
  # get 'bookings/new'
  # get 'bookings/edit'
  # get 'dogparks/index'
  # get 'dogparks/show'
  # get 'dogparks/new'
  # get 'dogparks/edit'
  # get 'users/index'
  # get 'users/show'
  # get 'users/new'
  # get 'users/edit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

resources:dogparks
resources:bookings
end
