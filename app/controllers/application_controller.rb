class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

    before_action :authenticate_user!
    before_filter :configure_permitted_parameters, if: :devise_controller?
  protected
    def configure_permitted_parameters

      devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
      devise_parameter_sanitizer.permit(:sign_up, keys: [:sex])
      devise_parameter_sanitizer.permit(:sign_up, keys: [:place])
      devise_parameter_sanitizer.permit(:sign_up, keys: [:tall])
      devise_parameter_sanitizer.permit(:sign_up, keys: [:hobby])
      devise_parameter_sanitizer.permit(:sign_up, keys: [categories_attributes: %i(id feti _destroy)])
      devise_parameter_sanitizer.permit(:sign_up, keys: [:feti])
      devise_parameter_sanitizer.permit(:sign_up, keys: [:image])
      devise_parameter_sanitizer.permit(:sign_up, keys: [{ :sex => [] }])
      devise_parameter_sanitizer.permit(:sign_up, keys: [:tubuyaki])
      devise_parameter_sanitizer.permit(:sign_up, keys: [:naiyou])
      devise_parameter_sanitizer.permit(:sign_up, keys: [:age])

      devise_parameter_sanitizer.permit(:account_update, keys: [:name])
      devise_parameter_sanitizer.permit(:account_update, keys: [:sex])
      devise_parameter_sanitizer.permit(:account_update, keys: [:place])
      devise_parameter_sanitizer.permit(:account_update, keys: [:tall])
      devise_parameter_sanitizer.permit(:account_update, keys: [:hobby])
      devise_parameter_sanitizer.permit(:account_update, keys: [categories_attributes: %i(id feti _destroy)])
      devise_parameter_sanitizer.permit(:account_update, keys: [:feti])
      devise_parameter_sanitizer.permit(:account_update, keys: [:image])
      devise_parameter_sanitizer.permit(:account_update, keys: [{ :sex => [] }])
      devise_parameter_sanitizer.permit(:account_update, keys: [:tubuyaki])
      devise_parameter_sanitizer.permit(:account_update, keys: [:naiyou])
      devise_parameter_sanitizer.permit(:account_update, keys: [:age])
      

      # これはストロングパラーメーターみたいなものでemailとpass以外も
      # 保存してくれるようにするもの
    end

    

   
end