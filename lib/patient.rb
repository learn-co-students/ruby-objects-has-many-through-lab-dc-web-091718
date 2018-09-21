
class Patient
  attr_accessor :name, :appointments
  @@all=[]
  def initialize(name)
    @name=name
    @appointments=[]
    @@all << self
  end
  
  
  
  def self.all
    @@all
  end
  
  def new_appointment(doctor, date)
    doctor.new_appointment(self,date)
  end
  
  def doctors
    @appointments.map{|el| el.doctor}.uniq
  end
  
end
