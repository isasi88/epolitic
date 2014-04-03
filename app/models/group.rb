class Group < ActiveRecord::Base

	mount_uploader :avatar, GroupAvatarUploader

	has_many :affiliations
	validates :name, presence: true

end
