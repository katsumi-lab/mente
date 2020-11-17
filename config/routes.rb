Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    passwords: 'users/passwords'
  }
  resources :tasks
  resources :users, only: [:show, :edit, :destroy]

  root to: 'tasks#index'
  get 'search', to: 'tasks#search'
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  post '/tasks/guest_sign_in', to: 'tasks#new_guest'

  # ゲスト用ログイン
  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#new_guest'
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end


