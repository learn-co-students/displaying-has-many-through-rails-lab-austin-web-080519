class Doctor < ApplicationRecord
    has_many :appointments
    has_many :patients, through: :appointments

    def appointment_times
        appointments = []
        my_appointments = self.appointments
        my_appointments.each do |a|
        appointments << a.appointment_datetime 
        end
        appointments
    end
end
