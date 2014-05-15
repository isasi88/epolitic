module ApplicationHelper

	def flash_message
		if flash[:notice] || flash[:success]
			content_tag :div, class: 'alert alert-success' do
	 			flash[:notice] || flash[:success]
	 		end
		elsif flash[:error] || flash[:alert]
			content_tag :div, class: 'alert alert-danger' do
				flash[:error] || flash[:alert]
			end
		else
			nil
		end
	end

	def check_corruption(polititian)
		if polititian.trials.count == 0
			'<div class="icon-ok"><span class="glyphicon glyphicon-ok"></span></div>'.html_safe
		else
			'<div class="icon-bad"><span class="glyphicon glyphicon-warning-sign"></span></div>'.html_safe
		end
	end	

	def check_education(polititian)
		if polititian.educations.count == 0
			'<div class="icon-bad"><span class="glyphicon glyphicon-warning-sign"></span></div>'.html_safe
		else
			'<div class="icon-ok"><span class="glyphicon glyphicon-ok"></span></div>'.html_safe
		end
	end

	def check_job_and_exam(polititian)
		if (polititian.jobs.count + polititian.exams.count) == 0
			'<div class="icon-bad"><span class="glyphicon glyphicon-warning-sign"></span></div>'.html_safe
		else
			'<div class="icon-ok"><span class="glyphicon glyphicon-ok"></span></div>'.html_safe
		end
	end


# IF USER CAN NOT EDIT, THEN MODAL IS RENDERED INSTEAD OF LINKING TO FORMS
# ======================================================================== 

	def edit_link(path)
		if user_signed_in? && current_user.editor?
			link_to("<span class='glyphicon glyphicon-pencil'> Editar".html_safe, path)
		else	
			'<a data-toggle="modal" data-target="#can-not-edit-modal"> <span class="glyphicon glyphicon-pencil"> Editar</a>'.html_safe
		end
	end

	def delete_link(path)
		if user_signed_in? && current_user.editor?
			link_to("<span class='glyphicon glyphicon-trash'> Borrar".html_safe, path, method: :delete, confirm: 'Confirma que quieres borrar este elemento')
		else	
			'<a data-toggle="modal" data-target="#can-not-edit-modal"> <span class="glyphicon glyphicon-trash"> Borrar</a>'.html_safe
		end
	end

end
