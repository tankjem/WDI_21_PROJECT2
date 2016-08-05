class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :email, :profile_picture, :remote_profile_picture_url])      
      devise_parameter_sanitizer.permit(:account_update, keys: [:username, :email, :profile_picture, :remote_profile_picture_url])
    end

    def after_sign_in_path_for(resource)
      user_path(current_user)
    end
    def after_sign_out_path_for(resource)
      root_path
    end
    def after_update_path_for(resource)
      user_path(current_user)
    end
end
