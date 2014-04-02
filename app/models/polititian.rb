class Polititian < ActiveRecord::Base

	mount_uploader :avatar, PolititianAvatarUploader

	has_many :educations
	has_many :jobs
	has_many :trials
	has_many :exams
	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :political_position, presence: true

	def self.search(text)
		if text
			Polititian.where("first_name LIKE ?", "%#{text}%")
		else
			Polititian.all
		end
	end

end
