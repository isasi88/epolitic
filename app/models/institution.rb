class Institution < ActiveRecord::Base
	mount_uploader :avatar, InstitutionAvatarUploader
	has_many :polititians, through: :affiliations
	has_many :affiliations
	accepts_nested_attributes_for :affiliations, :reject_if => proc {|attrs| attrs['polititian_id'].blank? }
	validates :name, presence: true
end
