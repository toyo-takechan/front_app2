Rails.application.routes.draw do

  root to: 'homes#index'
  get '/car',    to: 'homes#car'
  get '/chat',   to: 'homes#chat'
  get '/heart',  to: 'homes#heart'
  get '/about',  to: 'homes#about'
  get '/contact',to: 'homes#contact'
end
