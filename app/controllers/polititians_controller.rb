class PolititiansController < ApplicationController

	def index
		@polititians = Polititian.all
	end

	def show
		@polititian = Polititian.find(params[:id])
		@jobs = @polititian.jobs		
	end

	def new
		@polititian = Polititian.new
	end

	def create
		@polititian = Polititian.new entry_params
		if @polititian.save
			redirect_to action: 'show', controller: 'polititians', id: @polititian.id
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
		else
			render 'edit'
		end	
	end

	def jobs_index
		@polititian = Polititian.find params([:id])
		@jobs = @polititian.jobs
	end	

	def entry_params
		params.require(:polititian).permit(:id, :first_name, :last_name, :political_position, :political_position_start_at, :political_position_end_at)
	end

end