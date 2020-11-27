class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  # rubocop:disable Layout/LineLength
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[name username email password password_confirmation])
    devise_parameter_sanitizer.permit(:account_update, keys: %i[name username email password password_confirmation current_password])
  end
  # rubocop:enable Layout/LineLength
end
