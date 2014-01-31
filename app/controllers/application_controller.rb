class ApplicationController < ActionController::Base

   before_filter :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:username, :email, :password, :password_confirmation, :remember_me) }
    devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:login, :username, :email, :password, :remember_me) }
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:username, :email, :password, :password_confirmation, :current_password) }
  end
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception



def after_sign_in_path_for(resource)
    if hr_signed_in?
       hmain_path
    elsif authorize_signed_in?
        amain_path
    else
       emain_path
    end
end

def after_sign_out_path_for(resource)
    if hr_signed_in?
       hlogin_path
    elsif authorize_signed_in?
        alogin_path
    else
        elogin_path
    end
end




end


