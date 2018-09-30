class Appointment
  attr_accessor :date, :patient, :doctor

  @@all = []

  def initialize(patient, date, doctor)
    @date, @patient, @doctor = date, patient, doctor
    @@all << self
  end

  def self.all
    @@all
  end
end
