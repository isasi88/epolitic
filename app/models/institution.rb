class Institution < ActiveRecord::Base
	mount_uploader :avatar, InstitutionAvatarUploader
	has_many :polititians, through: :affiliations
	has_many :affiliations
	validates :name, presence: true
end
