class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_order

  before_action :configure_permitted_parameters, if: :devise_controller?

  def current_order
    if session[:order_id]
      Order.find(session[:order_id])
    else
      Order.new(:status => 'Pending', :account_id => current_user.account.id, :total_price => 0)
    end
  end
protected

def configure_permitted_parameters
  added_attrs = [:username, :email, :first_name, :last_name, :password, :password_confirmation, :remember_me]
  devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
  devise_parameter_sanitizer.permit :account_update, keys: added_attrs
end

end
