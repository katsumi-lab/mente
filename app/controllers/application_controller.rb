class ApplicationController < ActionController::Base
  # before_action :authenticate_user!   ←ゲストログイン用にコメントアウト
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :first_name_kana, :last_name_kana])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:first_name, :last_name])
  end
end

class MyLogger < Logger
  include LoggerSilence
  include ActiveSupport::LoggerThreadSafeLevel
end

before_action :mylogger_test

private

def mylogger_test
  mylogger = MyLogger.new(STDOUT)
  mylogger.silence do
    mylogger.debug("controller = #{controller_name}")
    mylogger.info("action = #{action_name}")
    mylogger.error("controler#action = #{controller_name}##{action_name}")
  end
end