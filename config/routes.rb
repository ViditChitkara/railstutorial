Rails.application.routes.draw do
  get 'launch/home'

  get 'launch/index'

  get '/' => 'home#hello'
end
