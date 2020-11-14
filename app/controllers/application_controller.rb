class ApplicationController < ActionController::Base
  before_action :authenticate_parent!
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  before_action :banned?

    def banned?
      if current_parent.present? && !current_parent.active?
        sign_out current_parent
        flash[:notice] = "This account has been suspended...."
        redirect_to root_path
      end
    end

    def user_permision
      unless @parent == current_parent
        flash[:notice] = "Permisions denied"
        redirect_to root_path
      end
    end

  protected

    def configure_permitted_parameters

        devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :password , :first_name,:last_name, :address])

        devise_parameter_sanitizer.permit(:account_update, keys:[:first_name,:last_name, :address, image_attributes:[:avatar]])
    end

end
