class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def check_permitted
    user = User.find(current_user)
    unless user.has_role? :admin
      redirect_to "/", :alert => "Access denied."
    end
  end

  def after_sign_in_path_for(resource)
    user = User.find(current_user)
    if user.has_role? :admin
      tests_url
    else
      root_path
    end
  end

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up)  { |u| u.permit(  :email,:password, :password_confirmation, roles: []) }
  end



end
