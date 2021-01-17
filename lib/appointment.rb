class Appointment
    @@all = []
    attr_reader :date
    attr_accessor :patient, :doctor
    def initialize(date, patient, doctor)
        @date = date
        @patient = patient
        @doctor = doctor
        save
    end
    def save 
        @@all.push(self)
    end
    def self.all
        @@all
    end

end
