class AffiliationsController < ApplicationController

	def create
		@polititian = Polititian.find(entry_params[:polititian_id])
		@affiliation = @polititian.affiliations.build entry_params
		@institution = Institution.find(entry_params[:institution_id])
		@polititians = @institution.polititians
		if @affiliation.save
			flash[:success] = "Affiliation created successfully."
			redirect_to action: 'show', controller: 'institutions', id: @affiliation.institution_id
		else
			render "/institutions/show"
		end
	end

	def destroy
		@affiliation = Affiliation.find params[:id]
		@affiliation.destroy
#		redirect_to request.referer
		redirect_to :back
		flash[:success] = "Polititian deleted succesfully."
	end

	def entry_params
		params.require(:affiliation).permit(:polititian_id, :institution_id, :start_at, :end_at)
	end

end
