class Affiliation < ActiveRecord::Base

	belongs_to :institution
	belongs_to :polititian
#	validates :polititian_id, presence: true
#	validates :institution_id, presence: true
	validates :polititian_id, :uniqueness => {:scope=>:institution_id}

end
