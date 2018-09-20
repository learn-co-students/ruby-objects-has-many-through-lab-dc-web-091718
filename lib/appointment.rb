class Appointment

	attr_accessor :doctor, :patient
	attr_reader  :date
	@@all = []

	def initialize(patient, doctor, date)
		@patient, @doctor, @date = patient, doctor, date
		@@all << self

	end

	def self.all
		@@all
	end
end