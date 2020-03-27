class ProfessorsController < ApplicationController

  def index
    @professors = Professor.all
  end

  def show
    @students = Student.all

    @professor = Professor.find(params[:id])

  end
end
