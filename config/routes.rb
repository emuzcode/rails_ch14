Rails.application.routes.draw do
  
  root 'static_pages#home'
  
  # static_pages
  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  
  # users
  resources :users
    #get '/users',  to: 'users#index'
    #get '/users/:id', to: 'users#show'
    get '/signup',  to: 'users#new'
    #post '/users', to: 'users#create'
    #get 'users/:id/edit', to: 'users#edit'
    #patch 'users/:id', to: 'users#update'
    #delete 'users/:id', to: 'users#destroy'
end
