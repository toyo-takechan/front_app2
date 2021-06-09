Rails.application.routes.draw do

  root to: 'homes#index'
  get '/homes/car', to: 'homes#car'
  get '/homes/chat', to: 'homes#chat'
  get '/homes/heart', to: 'homes#heart'
end
