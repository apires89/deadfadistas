Rails.application.routes.draw do
  root to: 'pages#home'

  resources :dead_players, only: :show do
    # index show new create edit update delete
    resources :reviews, only: [:create, :destroy]
    resources :instruments, only: [:index]
    member do
      post :publish
      post :unpublish
    end
    collection do
      get :top
    end
  end

  resources :reviews, only: :destroy
end
