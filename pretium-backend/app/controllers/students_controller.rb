class StudentsController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :set_student, only: [:show, :edit, :update, :destroy]

  # GET /students
  # GET /students.json
  def index
    role = current_user.role
    @students = nil
    if role == User.ROLES[0]
      @students = Student.all
    elsif role == User.ROLES[1]
      @teacher = Teacher.find(current_user.id)
      @students = Student.where(college_id: @teacher.college_id).includes(:ratings)
    end
    # respond_to do |format|
    #   format.json { render json: {students: @students}, status: :ok }
    # end
  end

  # GET /students/1
  # GET /students/1.json
  def show 
    # respond_to do |format|
    #   format.json { render json: {student: @student}, status: :ok }
    # end
  end

  # GET /students/new
  def new
    @student = Student.new
  end

  # GET /students/1/edit
  def edit
  end

  # POST /students
  # POST /students.json
  def create
    @student = Student.new(student_params)

    respond_to do |format|
      if @student.save
        format.json { render json: {student: @student}, status: :ok }
      else
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /students/1
  # PATCH/PUT /students/1.json
  def update
    respond_to do |format|
      if @student.update(student_params)
        format.json { render json: {student: @student}, status: :ok }
      else
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /students/1
  # DELETE /students/1.json
  def destroy
    @student.destroy
    respond_to do |format|
      format.html { redirect_to students_url, notice: 'Student was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student
      @student = Student.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_params
      params.require(:student).permit(:name, :passout, :course, :college_id,
        :dob, :gender,:nationality,:marital_status,:spouse_name,:address,
        :secondary_school, :senior_secondary_school, :graduation, :post_graduation, 
        :higher_secondary_school, :father_name, :mother_name, :primary_school,
        :co_curricular, :extra_curricular, :archivements)
    end
end
