Rails.application.routes.draw do
  #get 'users/name:string'

  resources :posts
  resources :users
  

  
end
