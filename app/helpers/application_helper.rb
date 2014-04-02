module ApplicationHelper

	def flash_message
		if flash[:success]
			content_tag :div, class: 'alert alert-success' do
	 			flash[:success]
	 		end
		elsif flash[:error]
			content_tag :div, class: 'alert alert-danger' do
				flash[:error]
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

	def check_job(polititian)
		if polititian.jobs.count == 0
			'<div class="icon-bad"><span class="glyphicon glyphicon-warning-sign"></span></div>'.html_safe
		else
			'<div class="icon-ok"><span class="glyphicon glyphicon-ok"></span></div>'.html_safe
		end
	end

end
