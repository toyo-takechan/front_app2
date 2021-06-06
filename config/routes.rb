Rails.application.routes.draw do

  root to: 'homes#index'
  get '/homes/top', to: 'homes#top'
  get '/homes/chat', to: 'homes#chat'
  get '/homes/heart', to: 'homes#heart'
end
