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
end
