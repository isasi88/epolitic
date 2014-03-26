class PolititiansController < ApplicationController

	def index
		@polititians = Polititian.all
	end
end