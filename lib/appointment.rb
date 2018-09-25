class Appointment

	attr_reader :patient,:date,:doctor

	@@all = []

	def initialize(patient,doctor,date)
		@patient, @doctor, @date = patient,doctor,date
		Appointment.all << self
	end

	def self.all 
		@@all 
	end

end