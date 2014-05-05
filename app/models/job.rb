class Job < ActiveRecord::Base
	belongs_to :polititian
	validates :position, presence: true
	validates :polititian, presence: true
	validates :salary,	numericality: true, :allow_nil => true

	scope :political_jobs, -> { where(political_employer: true) }
	scope :non_political_jobs, -> { where(political_employer: false) }

end
