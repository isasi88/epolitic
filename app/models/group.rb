class Group < ActiveRecord::Base

	mount_uploader :avatar, GroupAvatarUploader

	has_many :polititians
	has_many :institutions, through: :polititians
	validates :name, presence: true

	scope :filter_by_institution_id, ->(input) { joins(:institutions).where("institution_id = ?", input)}

end