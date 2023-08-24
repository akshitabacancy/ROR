Rails.application.routes.draw do
  get 'users/new'
  root 'static_pages#home'
  get '/help', to: 'static_pages#help'
  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  get '/signup', to: 'users#new'
  # get '/login', to: 'sessions#new'
  # post '/login', to: 'sessions#create'
  resources :users
  resources :sessions, only: ['new', 'get', 'create', 'post', 'edit', 'update', 'patch', 'put', 'destroy']
  # delete '/session', to: 'sessions#destroy'
end
