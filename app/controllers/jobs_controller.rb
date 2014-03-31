class JobsController < ApplicationController


	def create
		@polititian = Polititian.find params[:polititian_id]
		@job = @polititian.jobs.build entry_params
		if @job.save
			flash[:success] = "Job created succesfully"
			redirect_to action: 'show', controller: 'polititians', id: @polititian.id
		else
			render 'new'
		end
	end

	def entry_params
		params.require(:job).permit(:employer, :position, :description, :start_at, :end_at)
	end

end
