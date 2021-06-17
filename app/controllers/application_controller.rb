class ApplicationController < ActionController::Base
before_action :authenticate_user!, only: [:new, :create, :show, :edit, :update, :destroy]
before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name,:image,:image_cache])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name,:image,:image_cache])
  end

  def after_sign_in_path_for(resource)
      user_path(resource.id)
  end

end
