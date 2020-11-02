class UsersController < ApplicationController
  resources :users, only: [:edit, :update]

  def edit
  end
end
