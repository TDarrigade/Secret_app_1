Rails.application.routes.draw do
  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  get 'static_pages/home'

  get 'static_pages/secret'

  get 'users/new'

  get 'users/create'

  get 'users/edit'

  get 'users/destroy'

root'static_pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
