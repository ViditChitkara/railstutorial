Rails.application.routes.draw do
  get 'launch/home'

  get 'launch/index'

  get '/' => 'home#hello'


  get '/signin' => 'home#signin_get'
  post '/signin' => 'home#signin'
  get '/signup' => 'home#signup_get'
  post '/signup' => 'home#signup'
  get '/logout' => 'home#logout'
end
