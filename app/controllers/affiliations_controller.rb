class AffiliationsController < ApplicationController

	def create
		polititian = Polititian.find(params[:polititian_id])
		affiliation = polititian.affiliations.build entry_params		
		if affiliation.save
			flash[:success] = "Affiliation created successfully."
			redirect_to action: 'show', controller: 'polititians', id: affiliation.polititian_id
		else
			redirect_to action: 'show', controller: 'polititians', id: affiliation.polititian_id
		end
	end

	def update
	end

	def destroy
	end

	def entry_params
		params.require(:affiliation).permit(:polititian_id, :group_id, :start_at, :end_at)
	end

end
