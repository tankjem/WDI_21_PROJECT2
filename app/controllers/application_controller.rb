class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :profile_picture])      
      devise_parameter_sanitizer.permit(:account_update, keys: [:username, :profile_picture])
    end

    def after_sign_in_path_for(resource)
      user_path(current_user)
    end
    def after_sign_out_path_for(resource)
      root_path
    end
end
