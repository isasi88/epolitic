class Affiliation < ActiveRecord::Base

	belongs_to :group
	belongs_to :polititian
	validates :polititian_id, presence: true
	validates :group_id, presence: true 	


end
