class Affiliation < ActiveRecord::Base

	belongs_to :groups
	belongs_to :educations
	validates :polititian_id, presence: true
	validates :group_id, presence: true 	


end
