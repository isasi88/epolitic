class PolititiansController < ApplicationController

	def index
		@polititians = Polititian.all
	end

	def show
		@polititian = Polititian.find(params[:id])
		@job = @polititian.jobs.build
		@jobs = @polititian.jobs		
	end

	def new
		@polititian = Polititian.new
	end

	def create
		@polititian = Polititian.new entry_params
		if @polititian.save
			redirect_to action: 'show', controller: 'polititians', id: @polititian.id
			flash[:success] = "Polititian created successfully."
		else
			render 'new'
		end
	end

	def edit
		@polititian = Polititian.find params[:id]
	end

	def update
		@polititian = Polititian.find params[:id]
		if @polititian.update_attributes(entry_params)
			redirect_to action: 'show', controller: 'polititians', id: @polititian.id
			flash[:success] = "Polititian updated successfully."
		else
			render 'edit'
		end	
	end

	def destroy
		@polititian = Polititian.find params[:id]
		@polititian.destroy
		redirect_to action: 'index', controller: 'polititians'
		flash[:success] = "Polititian deleted succesfully."
	end


	def entry_params
		params.require(:polititian).permit(:id, :first_name, :last_name, :political_position, :political_position_start_at, :political_position_end_at)
	end

end