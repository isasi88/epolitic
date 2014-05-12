class Polititian < ActiveRecord::Base

	mount_uploader :avatar, PolititianAvatarUploader

	has_many :educations, dependent: :destroy
	has_many :jobs, dependent: :destroy
	has_many :trials, dependent: :destroy
	has_many :exams, dependent: :destroy
	belongs_to :group
	has_many :affiliations, dependent: :destroy
	has_many :institutions, through: :affiliations
	accepts_nested_attributes_for :affiliations, :reject_if => proc {|attrs| attrs['institution_id'].blank? }
	validates :first_name, presence: true
	validates :last_name, presence: true

	def full_name
	    "#{first_name} #{last_name}"
	end

	scope :filter_by_group_id, ->(input) { where("group_id = ?", input)}
	scope :filter_by_institution_id, ->(input) { joins(:institutions).where("institution_id = ?", input)}
	scope :search, ->(input) { where("first_name LIKE ? or last_name LIKE ? or concat(first_name, ' ', last_name) LIKE ?", "%#{input}%", "%#{input}%", "%#{input}%")}

end
