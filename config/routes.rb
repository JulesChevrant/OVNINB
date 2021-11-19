Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :ovnis do
    resources :reservations, only: [ :new, :create, :index ]
  end
  resource :profile, only: [ :show ]

end
