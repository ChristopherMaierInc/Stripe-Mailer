Rails.application.routes.draw do

  resources :charges

  root 'pages#index'

  get '/index', to: 'pages#index'

  get '/cart', to: 'pages#cart'




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
