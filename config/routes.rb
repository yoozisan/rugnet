Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#guest_sign_in'
  end
  devise_for :users, controllers: {registrations: 'users/registrations',passwords: 'users/passwords'}
  root 'tops#index'
  get "tops/index"
  resources :posts do
    collection do
      post :confirm
    end
  end
end
