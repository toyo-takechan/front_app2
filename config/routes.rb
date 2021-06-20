Rails.application.routes.draw do

  # get 'users/show'
  # get 'users/new'
  # get 'users/create'
  # get 'users/edit'
  # get 'users/update'
  # get 'users/destroy'
  root to: 'homes#index'
  get '/car',    to: 'homes#car'
  get '/chat',   to: 'homes#chat'
  get '/heart',  to: 'homes#heart'
  get '/about',  to: 'homes#about'
  get '/contact',to: 'homes#contact'
  get '/signup' ,to: "users#new"

  resources :users
end
