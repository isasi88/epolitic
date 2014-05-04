class Group < ActiveRecord::Base

	mount_uploader :avatar, GroupAvatarUploader

	has_many :affiliations, :dependent => :destroy
	has_many :polititians, through: :affiliations
	validates :name, presence: true

end
