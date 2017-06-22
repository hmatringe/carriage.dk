Rails.application.routes.draw do
  devise_for :users

  resources :bikes, only: [:index, :show, :new, :create] do
    resources :bookings, only: [:create, :update, :show] do
      resources :payments, only: [:new, :create]
    end
  end

  mount Attachinary::Engine => "/attachinary"

  root to: 'pages#home'

end
