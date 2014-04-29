class Education < ActiveRecord::Base
	belongs_to :polititian
	validates :degree, presence: true
	validates :polititian, presence: true 

	scope :finished_educations, -> { where(not_finished: false) }
	scope :non_finished_educations, -> { where(not_finished: true) }

end
