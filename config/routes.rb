Rails.application.routes.draw do

  # get 'microposts/show'
  get 'password_resets/new'
  get 'password_resets/edit'
  get 'sessions/new'
  # get 'users/show'
  # get 'users/new'
  # get 'users/create'
  # get 'users/edit'
  # get 'users/update'
  # get 'users/destroy'
  root to: 'homes#top'
  get    '/car',     to: 'homes#car'
  # get    '/chat',    to: 'homes#chat'
  get    '/heart',   to: 'homes#heart'
  get    '/slide',   to: 'homes#slide'
  get    '/about',   to: 'homes#about'
  get    '/contact', to: 'homes#contact'
  get    '/explain', to: 'homes#explain'
  get    '/signup' , to: "users#new"
  get    '/robot1',  to: "homes#robot1"
  get    '/robot2',  to: "homes#robot2"
  get    '/robot3',  to: "homes#robot3"
  get    '/robot4',  to: "homes#robot4"
  get    '/login',   to: "sessions#new"
  post   '/login',   to: "sessions#create"
  delete '/logout',  to: "sessions#destroy"
  # get    'chat/id',  to: 'chats#show'
  resources :users do
    member do
      get :following, :followers
    end
  end
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]
  resources :microposts,   only: [:new, :show, :create, :destroy]
  resources :chats, only: [:new, :show, :create, :destroy]
  resources :relationships, only: [:create, :destroy]
end

