class Polititian < ActiveRecord::Base

	mount_uploader :avatar, PolititianAvatarUploader

	has_many :educations
	has_many :jobs
	has_many :trials
	has_many :exams
	belongs_to :group
	has_many :affiliations
	has_many :institutions, through: :affiliations
	accepts_nested_attributes_for :affiliations, :reject_if => proc {|attrs| attrs['institution_id'].blank? }
	validates :first_name, presence: true
	validates :last_name, presence: true



#	def self.search(text)
#		if text
#			Polititian.where("first_name LIKE ?", "%#{text}%")
#		else
#			Polititian.all
#		end
#	end

	def full_name
	    "#{first_name} #{last_name}"
	end


	scope :filter_by_group_id, ->(input) { where("group_id < ?", input)}
	scope :search, ->(input) { where("first_name LIKE ? or last_name LIKE ? or concat(last_name, ', ', first_name) LIKE ?", "%#{input}%", "%#{input}%" , "%#{input}%")}



end
