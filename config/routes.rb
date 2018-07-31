Rails.application.routes.draw do
  get '/', to: 'static_page#home', as: 'home'
  get '/contact', to: 'static_page#contact', as: 'contact'
  get '/about', to: 'static_page#about', as: 'about'
  post '/create', to: 'users#create', as: "create", redirect_to: './users/:name'
  get '/users', to: 'users#new', as: 'users'
  get '/users/:name', to: 'users#show' 
  get '/show/:name', to: 'user#show'
  get '/error', to: 'static_page#error', as: 'error'
 end
