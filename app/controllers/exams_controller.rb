class ExamsController < ApplicationController

	def create
		@polititian = Polititian.find params[:polititian_id]
		@exam = @polititian.exams.build entry_params
		if @exam.save
			flash[:success] = "Exam created succesfully"
			redirect_to action: 'show', controller: 'polititians', id: @polititian.id
		else
			render 'new'
		end
	end

	def edit
		@exam = Exam.find params[:id]
		@polititian = Polititian.find params[:polititian_id]		
	end

	def update
		@exam = Exam.find params[:id]
		@polititian = Polititian.find params[:polititian_id]
		if @exam.update_attributes entry_params
			redirect_to action: 'show', controller: 'polititians', id: @polititian.id
			flash[:success] = "Exam updated succesfully"
		else
			render 'edit'
		end	
	end

	def destroy
		@exam = Exam.find params[:id]
		@polititian = Polititian.find params[:polititian_id]
		@exam.destroy
		redirect_to action: 'show', controller: 'polititians', id: @polititian.id
	end

	def entry_params
		params.require(:exam).permit(:title, :description, :date)
	end

end
