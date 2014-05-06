module InstitutionsHelper

	def calculate_institution_count(institution)
		institution.polititians.count
	end
	def calculate_institution_education(institution)
		total = calculate_institution_count(institution)
		educated = institution.polititians.reduce(0){|memo, polititian| if polititian.educations.empty? then memo; else memo+1; end }
		percentage = (educated.to_f / total.to_f) * 100
		percentage.nan? ? 0 : percentage
	end

	def calculate_institution_job(institution)
		total = calculate_institution_count(institution)
		experienced = institution.polititians.reduce(0){|memo, polititian| if polititian.jobs.empty? then memo; else memo+1; end }
		percentage = (experienced.to_f / total.to_f) * 100
		percentage.nan? ? 0 : percentage
	end


end
