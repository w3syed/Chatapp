Rails.application.routes.draw do
  get 'message/create'
  get 'messages/create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "chatroom#index"
  get "login" , to: "session#new"
  post "login" , to: "session#create"
  get 'logout', to: "session#destroy" 
  get 'message', to:'message#create'
end
