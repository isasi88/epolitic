class TrialsController < ApplicationController

	def create
		@polititian = Polititian.find params[:polititian_id]
		@trial = @polititian.trials.build entry_params
		if @trial.save
			flash[:success] = "Trial created succesfully"
			redirect_to action: 'show', controller: 'polititians', id: @polititian.id
		else
			render 'new'
		end
	end

	def edit
		@trial = Trial.find params[:id]
		@polititian = Polititian.find params[:polititian_id]		
	end

	def update
		@trial = Trial.find params[:id]
		@polititian = Polititian.find params[:polititian_id]
		if @trial.update_attributes entry_params
			redirect_to action: 'show', controller: 'polititians', id: @polititian.id
			flash[:success] = "Trial updated succesfully"
		else
			render 'edit'
		end	
	end

	def destroy
		@trial = Trial.find params[:id]
		@polititian = Polititian.find params[:polititian_id]
		@trial.destroy
		redirect_to action: 'show', controller: 'polititians', id: @polititian.id
	end

	def entry_params
		params.require(:trial).permit(:title, :description, :start_at, :end_at)
	end

end
