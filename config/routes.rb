Rails.application.routes.draw do
  #get 'users/name:string'

  
  resources :users do 
    resources :posts
  end
  

  
end
