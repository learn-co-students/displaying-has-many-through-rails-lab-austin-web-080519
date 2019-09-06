class AppointmentsController < ApplicationController

    def show
        Appointment.find(params[:id])
    end

end
