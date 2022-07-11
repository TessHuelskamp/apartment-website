Rails.application.routes.draw do
  root 'main#index'
  get '/index', to: 'main#index'
  post '/create_status', to: 'main#add_status'
end
