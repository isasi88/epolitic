class InstitutionsController < ApplicationController

	def index
		@institutions = Institution.all
	end

	def show
		@institution = Institution.find(params[:id])
		@polititians = @institution.polititians
		@affiliation = @institution.affiliations.build
	end

	def new
		@institution = Institution.new
		@institution.affiliations.build
	end

	def create
		@institution = Institution.new entry_params
		if @institution.save
			redirect_to action: 'index', controller: 'institutions'
			flash[:success] = "Institution created successfully."
		else
			render 'new'
		end
	end

	def edit
		@institution = Institution.find params[:id]
	end

	def update
		@institution = Institution.find params[:id]
		if @institution.update_attributes(entry_params)
			redirect_to action: 'index', controller: 'institutions'
			flash[:success] = "Institution updated successfully."
		else
			render 'edit'
		end	
	end

	def destroy
		@institution = Institution.find params[:id]
		@institution.destroy
		redirect_to action: 'index', controller: 'institutions'
		flash[:success] = "Institution deleted succesfully."
	end
	
	def entry_params
		params.require(:institution).permit(:id, :name, :start_at, :end_at, :salary, :avatar, :remote_avatar_url, :description, :affiliations_attributes => [:institution_id, :polititian_id] )
	end

end
