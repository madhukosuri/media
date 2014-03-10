class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  #protect_from_forgery with: :exception

  def set_id(id)
  	puts "*******************setting id***************************"
  	@@a = id
  end

  def get_id
  	puts "*****************getting id******************************"
  	@@a
  end
end
