class Doctor
    @@all = []
    attr_reader :name
    attr_accessor :patient
    def initialize(name)
        @name = name
        save
    end
    def save 
        @@all.push(self)
    end
    def self.all
        @@all
    end
    def appointments
        Appointment.all.select {|appointment| appointment.doctor == self}
    end
    def new_appointment(date, patient)
        Appointment.new(date, patient, self)
    end

    def patients
        patients = []
        Appointment.all.each do |appointment| 
            # binding.pry
            if appointment.doctor == self
                patients.push(appointment.patient)
            end
        end
        patients
    end
end
