class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:prenom, :nom, :adresse, :telephone])
    devise_parameter_sanitizer.permit(:account_update, keys: [:prenom, :nom, :adresse, :telephone])
  end
end

