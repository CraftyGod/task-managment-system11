class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:firstName, :lastName, :email, :password, :password_confirmation) }
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:firstName, :lastName, :email, :password, :password_confirmation, :current_password) }
  end

  before_action :require_login

  private

  def require_login
    unless current_user
      redirect_to new_user_session
    end
  end
end