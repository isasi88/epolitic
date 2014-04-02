class Exam < ActiveRecord::Base
	belongs_to :polititian
	validates :title, presence: true
	validates :polititian, presence: true 	
end
