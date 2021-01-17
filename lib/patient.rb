class Patient
    @@all = []
    attr_reader :name
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
        Appointment.all.select {|appointment| appointment.patient == self}
    end
    def new_appointment(date, doctor)
        Appointment.new(date, self, doctor)
    end
    def doctors
        doctors = []
        Appointment.all.each do |appointment| 
            if appointment.patient == self
                doctors.push(appointment.doctor)
            end
        end
        doctors
    end


end
