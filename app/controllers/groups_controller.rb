class GroupsController < ApplicationController

	def index
		@groups = Group.where(nil) # creates an anonymous scope
		if params[:group_id_input] then	@groups = @groups.filter_by_group_id(params[:group_id_input][:group_id]) if params[:group_id_input][:group_id].present? end
		if params[:institution_id_input] then @groups = @groups.filter_by_institution_id(params[:institution_id_input][:institution_id]) if params[:institution_id].present? end
		@groups = @groups.search(params[:term]) if params[:term].present?
	end

	def show
		@group = Group.find(params[:id])
	end

	def new
		@group = Group.new
	end

	def create
		@group = Group.new entry_params
		if @group.save
			redirect_to action: 'index', controller: 'groups'
			flash[:success] = "Group created successfully."
		else
			render 'new'
		end
	end

	def edit
		@group = Group.find params[:id]
	end

	def update
		@group = Group.find params[:id]
		if @group.update_attributes(entry_params)
			redirect_to action: 'index', controller: 'groups'
			flash[:success] = "Group updated successfully."
		else
			render 'edit'
		end	
	end

	def destroy
		@group = Group.find params[:id]
		@group.destroy
		redirect_to action: 'index', controller: 'groups'
		flash[:success] = "Group deleted succesfully."
	end	

	def entry_params
		params.require(:group).permit(:name, :group_type, :description, :avatar)
	end

end
