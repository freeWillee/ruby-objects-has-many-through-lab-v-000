class Doctor
  @@all = []
  attr_accessor :name

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(date, patient)
    Appointment.new(date, patient, self)
  end

  def appointments
    Appointments.all.select do |appointment|
      appointment.doctor == self
    end
  end

  def patients
    self.appointments.collect do |appointment|
      appointment.patient
    end
  end

end
