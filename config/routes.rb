Rails.application.routes.draw do
  # Add your routes here
  #get 'auth/:provider/callback', to: 'sessions#create'
  #get '/login', to: 'sessions#new'
  match '/auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  root 'welcome#home'
end
