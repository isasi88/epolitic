class Group < ActiveRecord::Base

	mount_uploader :avatar, GroupAvatarUploader

	has_many :polititians
	validates :name, presence: true

end
