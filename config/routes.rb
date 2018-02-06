Rails.application.routes.draw do
  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  get 'static_pages/home'

  get 'static_pages/secret', as: 'secret'

  get 'users/new'

  get 'users/create'

  get 'users/edit', as: 'edit'

  get 'users/destroy'

  root'static_pages#home'

  get    'signup',   to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
