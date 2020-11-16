class UsersController < ApplicationController
  def show
    @last_name = current_user.last_name
    @first_name = current_user.first_name
    @last_name_kana = current_user.last_name_kana
    @first_name_kana = current_user.first_name_kana
    @email = current_user.email
    @tasks = Task.where(user_id: current_user.id)
    @count = @tasks.count
  end

  def edit
  end
  
end
