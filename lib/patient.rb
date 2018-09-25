class Patient

	attr_reader :name, :all

	@@all = []

	def initialize(name)
		@name = name
		Patient.all << self
	end

	def self.all
		@@all
	end

	def new_appointment(doctor, date)
		Appointment.new(self,doctor,date)
	end

	def appointments
		Appointment.all.select do |app| app.patient == self end
	end

	def doctors
		appointments.map(&:doctor)
	end


end