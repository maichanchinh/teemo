class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  #protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  layout :layout_by_resource



  def layout_by_resource
    if devise_controller?
      'authentication'
    else
      'admin'
    end

  end

  # Check user admin
  def check_authorization_admin
    unless current_user.has_role? :admin
      redirect_to "/", notice: "you do not have authority to use this function"
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
