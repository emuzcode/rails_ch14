Rails.application.routes.draw do
  
  root 'static_pages#home'
  
  # static_pages
  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  
  # users
  #resources :users
    get    '/users',          to: 'users#index', as: 'users'
    get    '/users/:id',      to: 'users#show',  as: 'user'
    get    '/signup',         to: 'users#new'
    post   '/users',          to: 'users#create'
    get    '/users/:id/edit', to: 'users#edit',  as: 'edit_user'
    patch  '/users/:id',      to: 'users#update'
    delete '/users/:id',      to: 'users#destroy'
    
  # sessions
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  
  # account_activation
  resources :account_activations, only: [:edit]
  
  # password_resets
  resources :password_resets,     only: [:new, :create, :edit, :update]
    #get '/password_resets/new', to: 'password_resets#new', as: 'new_password_reset'
    #post '/password_resets', to: 'password_resets#create'
    
  # microposts
  resources :microposts,          only: [:create, :destroy]
  
  # relationships
  resources :users do
    member do
      get :following, :followers
      # ex. /users/1/following や /users/1/followers
    end
  end
  resources :relationships,       only: [:create, :destroy]
end
