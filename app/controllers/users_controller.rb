class UsersController < ApplicationController
  # resources :users, only: [:edit, :update]
  
  # def create
  #   @user = User.new(user_params)
  #   if @user.save
  #     redirect_to action: :index
  #   else
  #     render :new
  #   end
  # end
  # def create
  #   @user = User.create(user_params)
  # end
  
  def edit
  end

  # private
  # def user_params
  #   params.require(:user).permit(last_name: last_name, first_name:first_name)
  # end
  
end
