class Group < ActiveRecord::Base

#	mount_uploader :avatar, GroupAvatarUploader

	has_many :affiliations
	has_many :polititians, through: :affiliations
	validates :name, presence: true

end
