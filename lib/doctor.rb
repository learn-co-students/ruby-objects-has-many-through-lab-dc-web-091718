class Doctor
  attr_accessor :appointments, :name
  @@all=[]
  def initialize(name)
    @name=name
    @appointments=[]
    @@all << self
  end

  def new_appointment(patient, date)
    r=Appointment.new(patient, self, date)
    @appointments << r
    r
  end

  def patients
    @appointments.map{|el| el.patient}.uniq
  end
  
  def self.all
    @@all
  end
  
end