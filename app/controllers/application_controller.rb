class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

def after_sign_in_path_for(resource)
    if hr_signed_in?
       hrs_hhome_path
    elsif authorize_signed_in?
        auth_main_path
    else
       employee_emain_path
    end
end

def after_sign_out_path_for(resource)
    if hr_signed_in?
        new_hr_session_path
    elsif authorize_signed_in?
        new_authorize_session_path
    else
        new_employe_session_path
    end
end




end


