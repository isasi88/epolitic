class PolititiansController < ApplicationController

	def index
		@polititians = Polititian.all
	end

	def show
		@polititian = Polititian.find(params[:id])
	end

	def new
		@polititian = Polititian.new
	end

	def create
		@polititian = Polititian.new(entry_params)
		@polititian.save
		render 'show'
	end

	def edit
		@polititian = Polititian.find params[:id]
	end

	def update
		@polititian = Polititian.find params[:id]
		@polititian.update_attributes(entry_params)
		render 'show'
	end

	def entry_params
		params.require(:polititian).permit(:id, :first_name, :last_name, :political_position, :political_position_start_at, :political_position_end_at)
	end

end