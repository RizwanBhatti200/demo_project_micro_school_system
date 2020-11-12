class TeachersController < ApplicationController
    before_action :set_teacher

def show;end


private
    def set_teacher
      @teacher = Teacher.find(params[:id])
    end
end