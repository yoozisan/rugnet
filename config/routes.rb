Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'tops#index'
  devise_for :users, :controllers => {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#guest_sign_in'
    get '/users/sign_out', to: 'devise/sessions#destroy'
  end
  resources :users, only: [:index, :show]
  resources :relationships, only: [:create, :destroy]
  resources :users do
    member do
      get :following, :followers
    end
  end
  resources :posts do
    resources :comments
  end
  resources :posts do
    collection do
      post :confirm
    end
  end

  resources :students do
    resources :records do
      collection do
        post :confirm
      end
    end
    collection do
      post :confirm
      get 'search'
    end
  end
end
