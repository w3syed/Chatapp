Rails.application.routes.draw do
 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "chatroom#index"
  get "login" , to: "session#new"
  post "login" , to: "session#create"
  get 'logout', to: "session#destroy" 
  post 'message', to:'message#create'
  get  'sign', to: 'session#newsignup'
  post 'sign',  to: "session#signup"

end
