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

	def edit
		@job = Job.find params[:id]
		@polititian = Polititian.find params[:polititian_id]		
	end

	def update
		@job = Job.find params[:id]
		@polititian = Polititian.find params[:polititian_id]
		if @job.update_attributes entry_params
			redirect_to action: 'show', controller: 'polititians', id: @polititian.id
			flash[:success] = "Job updated succesfully"
		else
			render 'edit'
		end	
	end

	def destroy
		@job = Job.find params[:id]
		@polititian = Polititian.find params[:polititian_id]
		@job.destroy
		redirect_to action: 'show', controller: 'polititians', id: @polititian.id
	end

	def entry_params
		params.require(:job).permit(:employer, :position, :description, :start_at, :end_at)
	end

end
