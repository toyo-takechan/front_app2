Rails.application.routes.draw do

  # get 'users/show'
  # get 'users/new'
  # get 'users/create'
  # get 'users/edit'
  # get 'users/update'
  # get 'users/destroy'
  root to: 'homes#top'
  get '/car',    to: 'homes#car'
  get '/chat',   to: 'homes#chat'
  get '/heart',  to: 'homes#heart'
  get '/about',  to: 'homes#about'
  get '/contact',to: 'homes#contact'
  get '/signup' ,to: "users#new"
  get '/robot1', to: "homes#robot1"
  get '/robot2', to: "homes#robot2"
  get '/robot3', to: "homes#robot3"
  get '/robot4', to: "homes#robot4"

  resources :users
end

