class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_order

  before_action :configure_permitted_parameters, if: :devise_controller?

  def current_order
    if session[:order_id]
      Order.find(session[:order_id])
    else
      if current_user
        if Order.where(:account_id => current_user.id, :status => 'new').any?
          x = Order.where(:account_id => current_user.id, :status => 'new')
          Order.find(x.first.id)
        else
          Order.new(:account_id => current_user.account.id, :status => 'new')
        end
      else
        Order.new
      end
    end
  end
protected

def configure_permitted_parameters
  added_attrs = [:username, :email, :first_name, :last_name, :password, :password_confirmation, :remember_me]
  update_attrs = [:password, :password_confirmation, :current_password]
  devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
  devise_parameter_sanitizer.permit :account_update, keys: update_attrs
end

end
