class Job < ActiveRecord::Base
	belongs_to :polititian
	validates :position, presence: true
	validates :polititian, presence: true 	
end
