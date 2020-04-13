Rails.application.routes.draw do

  root to: 'pages#show'
  get 'pages/show'
  post 'pages/show', to: 'pages#update'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :sketches
end
