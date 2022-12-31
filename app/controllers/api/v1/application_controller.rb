class Api::V1::ApplicationController < ActionController::API
  include Response
  include ExceptionHandler

  # before_action :restrict_access

  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  respond_to :json

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :email, :password, :password_confirmation) }
    devise_parameter_sanitizer.permit(:sign_in) { |u| u.permit(:email, :password) }
  end

  # private

  # def restrict_access
  #   api_key = ApiKey.find_by_access_token(params[:access_token])
  #   head :unauthorized unless api_key
  # end
end
