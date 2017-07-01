Rails.application.routes.draw do
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  resources :bikes, only: [:index, :show, :new, :create] do
    resources :rentals, only: [:index, :create, :update, :show] do
      resources :payments, only: [:new, :create]
    end
  end

  mount Attachinary::Engine => "/attachinary"

  get '/components', to: 'pages#components'
  get '/credits', to: 'pages#credits'

  root to: 'pages#home'

end
