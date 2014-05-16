class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


# FOLLOWING METHOD USED AS BEFORE_ACTION IN CONTROLLERS
# ===================================================== 

	def require_editor_status
		unless current_user.editor?
		  flash[:error] = "Necesitas permiso de editor. Info en este <a href='#{join_us_path}'>enlace</a>.".html_safe #Escríbenos a info.politicos epolitic.org y te contestaremos en unas pocas horas."
		  redirect_to root_path
		end
	end


end
