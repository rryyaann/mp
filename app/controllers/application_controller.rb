class ApplicationController < ActionController::Base
 # Prevent CSRF attacks by raising an exception.
 # For APIs, you may want to use :null_session instead.
 protect_from_forgery with: :exception
 before_filter :configure_permitted_parameters, if: :devise_controller?

protected

 def configure_permitted_parameters
   devise_parameter_sanitizer.for(:sign_up) << :name 
   devise_parameter_sanitizer.for(:sign_up) << :lastname
   devise_parameter_sanitizer.for(:sign_up) << :phone
   devise_parameter_sanitizer.for(:sign_up) << :address
   devise_parameter_sanitizer.for(:sign_up) << :city
   devise_parameter_sanitizer.for(:sign_up) << :zip
   devise_parameter_sanitizer.for(:sign_up) << :rooms
   devise_parameter_sanitizer.for(:sign_up) << :keys
   devise_parameter_sanitizer.for(:sign_up) << :trash
   devise_parameter_sanitizer.for(:sign_up) << :pets
   devise_parameter_sanitizer.for(:sign_up) << :parking
   devise_parameter_sanitizer.for(:sign_up) << :bedrooms
   devise_parameter_sanitizer.for(:sign_up) << :bathrooms
   devise_parameter_sanitizer.for(:sign_up) << :sf
   devise_parameter_sanitizer.for(:account_update) << :name 
   devise_parameter_sanitizer.for(:account_update) << :lastname 
   devise_parameter_sanitizer.for(:account_update) << :phone
   devise_parameter_sanitizer.for(:account_update) << :address
   devise_parameter_sanitizer.for(:account_update) << :city
   devise_parameter_sanitizer.for(:account_update) << :zip
   devise_parameter_sanitizer.for(:account_update) << :rooms
   devise_parameter_sanitizer.for(:account_update) << :keys
   devise_parameter_sanitizer.for(:account_update) << :trash
   devise_parameter_sanitizer.for(:account_update) << :pets
   devise_parameter_sanitizer.for(:account_update) << :parking
   devise_parameter_sanitizer.for(:account_update) << :bedrooms
   devise_parameter_sanitizer.for(:account_update) << :bathrooms
   devise_parameter_sanitizer.for(:account_update) << :sf
 end
end