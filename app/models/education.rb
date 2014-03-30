class Education < ActiveRecord::Base
	belongs_to :polititian
	validates :degree, presence: true
	validates :polititian, presence: true 
end
