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

end