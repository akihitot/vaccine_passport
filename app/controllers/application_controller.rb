class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  layout :layout_by_resource
  

  private
  def configure_permitted_parameters 
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name,:my_number])
  end

  def layout_by_resource
    if devise_controller?
      "sub-layout"
    else
      "application"
    end
  end

end
