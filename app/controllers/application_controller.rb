class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session
  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name,:admin])
  end
  
  private
    def after_sign_in_path_for(resource)
      if current_user.admin?
      	admin_path
      else
      	user_path(current_user)
      end

    end
end
