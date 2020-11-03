class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(
      :sign_up, keys: [:first_name, :last_name, :first_name_kana, :last_name_kana])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:first_name, :last_name])
  end
end
