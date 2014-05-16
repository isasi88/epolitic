class EducationsController < ApplicationController

	before_filter :authenticate_user!,
    	:only => [:new, :create, :edit, :update, :destroy]

	before_action :require_editor_status,
    	:only => [:new, :create, :edit, :update, :destroy]
    
	def create
		@polititian = Polititian.find params[:polititian_id]
		@education = @polititian.educations.build entry_params
		if @education.save
			flash[:success] = "Education created succesfully"
			redirect_to action: 'show', controller: 'polititians', id: @polititian.id
		else
			render 'new'
		end
	end

	def edit
		@education = Education.find params[:id]
		@polititian = Polititian.find params[:polititian_id]		
	end

	def update
		@education = Education.find params[:id]
		@polititian = Polititian.find params[:polititian_id]
		if @education.update_attributes entry_params
			redirect_to action: 'show', controller: 'polititians', id: @polititian.id
			flash[:success] = "Education updated succesfully"
		else
			render 'edit'
		end	
	end

	def destroy
		@education = Education.find params[:id]
		@polititian = Polititian.find params[:polititian_id]
		@education.destroy
		redirect_to action: 'show', controller: 'polititians', id: @polititian.id
	end

	def entry_params
		params.require(:education).permit(:degree, :center, :description, :start_at, :end_at, :not_finished)
	end

end
