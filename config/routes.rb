Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :ovnis do
    resources :reservations, only: [ :new, :create ]
  end

  resources :reservations, only: [:index] do
    member do
      patch 'approve'
      patch 'refuse'
    end
  end
end
