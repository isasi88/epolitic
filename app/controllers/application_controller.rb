class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  def check_permissions(intended_path)
  	if !user_signed_in?
  		root_path
#  	elsif !current_user.editor
#  		root_path
  	else
  		intended_path
  	end
  end

end
