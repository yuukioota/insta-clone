Rails.application.routes.draw do
  get 'likes/create'

  get 'likes/like_params'

  devise_for :users,
    controllers: { registrations: 'registrations' }
    
  root 'posts#index'
  get  '/users/:id', to: 'users#show', as: 'user'
  
  resources :posts, only: %i(index new create show destroy) do
    resources :photos, only: %i(create)
    resources :likes,  only: %i(create destroy)
  end
end
