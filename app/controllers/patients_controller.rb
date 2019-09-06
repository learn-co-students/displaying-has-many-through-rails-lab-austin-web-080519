class PatientsController < ApplicationController

    def index
        @patients = Patient.all
    end

    def show
        @patient = Patient.find(params[:id])
    end

    def new
        @patient = Patient.new
    end

    def create
        @patient = Patient.create(patient_params)
        redirect_to patient_path
    end

    def edit
        @patient = Patient.find(params[:id])
    end

    def update
        @patient = Patient.find(params[:id])
        @patient.update
        redirect_to patient_path
    end

    def patient_params
        params.require(:patient).permit(:name, :age)
    end

end
