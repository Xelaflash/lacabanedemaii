class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_order
  before_action :set_gamme
  before_action :store_user_location!, if: :storable_location?
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def current_order

    order = Order.find(session[:order_id])
    if !session[:order_id].nil? && order.active == false
       order = Order.new
    else
      order
    end
    rescue ActiveRecord::RecordNotFound
        order = Order.create
        session[:order_id] = order.id
        order
  end

  def set_gamme
    @gammes = Gamme.all
  end

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:prenom, :nom, :adresse, :telephone])
    devise_parameter_sanitizer.permit(:account_update, keys: [:prenom, :nom, :adresse, :telephone])
  end

  def after_sign_in_path_for(resource_or_scope)
    stored_location_for(resource_or_scope) || super
  end

  private

  def storable_location?
      request.get? && is_navigational_format? && !devise_controller? && !request.xhr?
  end

  def store_user_location!
    store_location_for(:user, request.fullpath)
  end

end

