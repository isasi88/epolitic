class Polititian < ActiveRecord::Base
	has_many :educations
	has_many :jobs
	has_many :trials
	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :political_position, presence: true
end
