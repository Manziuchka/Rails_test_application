Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  #resources :users, param: :phone
   post '/auth/login', to: 'authentication#login'
   get 'users', to: 'users#index'
   get 'users/:phone', to: 'users#show'
   post 'users', to: 'users#create'
   put 'users', to: 'users#update'
   delete 'users/:phone', to: 'users#destroy'
   get '/*a', to: 'application#not_found'

end
