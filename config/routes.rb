Rails.application.routes.draw do
  root 'main#index'
  get '/index', to: 'main#index'
end
