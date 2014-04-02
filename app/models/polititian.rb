class Polititian < ActiveRecord::Base

	mount_uploader :avatar, PolititianAvatarUploader

	has_many :educations
	has_many :jobs
	has_many :trials
	has_many :exams
	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :political_position, presence: true
end
