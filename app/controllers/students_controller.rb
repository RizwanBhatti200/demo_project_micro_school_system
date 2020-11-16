class StudentsController < ApplicationController

  before_action :set_student, only: [:show, :edit, :update, :destroy]
  before_action :set_parent, only: [:edit, :update, :destory]
  before_action :user_permision, only: [:new,:edit,:update, :destory]

  def index
    @students = current_parent.students
  end

  def show;end

  def new
    @student = current_parent.students.new
    @student.build_image
  end

  def edit
    @student.build_image if @student.image.blank?
  end

  def create
    @student = current_parent.students.new(student_params)

    respond_to do |format|
      if @student.save
        format.html { redirect_to parent_student_path(current_parent,@student), notice: 'Student was successfully created.' }
        format.json { render :show, status: :created, location: @student }
      else
        format.html { render :new }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @student.update(student_params)
        format.html { redirect_to parent_student_path(current_parent,@student), notice: 'Student was successfully updated.' }
        format.json { render :show, status: :ok, location: @student }
      else
        format.html { render :edit }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @student.destroy
    respond_to do |format|
      format.html { redirect_to parent_path(current_parent), notice: 'Student was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_student
      @student = Student.find(params[:id])
    end

    def student_params
      params.require(:student).permit(:first_name, :last_name, :age, :gender, :grade, image_attributes: [:avatar])
    end

    def set_parent
      @parent = @student.parent
    end
end
