class Doctor

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(patient, date)
    Appointment.new(date, patient, self)
  end

  def appointments
    appointments = Appointment.all
    appointments.select do |appointment|
      appointment.doctor == self
    end
  end

  def patients
    appointments = Appointment.all
    doc_app = appointments.select do |appointment|
      appointment.doctor == self
    end
    doc_app.map do |appointment|
      appointment.patient
    end
  end

end
