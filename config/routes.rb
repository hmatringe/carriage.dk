Rails.application.routes.draw do
  devise_for :users

  resources :bikes, only: [:index, :show, :new, :create] do
    resources :bookings, only: [:create, :update, :show] do
      resources :payments, only: [:new, :create]
    end
  end

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
