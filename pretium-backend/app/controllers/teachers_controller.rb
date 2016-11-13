class TeachersController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :set_teacher, only: [:show, :edit, :update, :destroy]

  # GET /teachers
  # GET /teachers.json
  def index
    @teachers = Teacher.all
    respond_to do |format|
      format.json { render json: {teachers: @teachers}, status: :ok }
    end
  end

  # GET /teachers/1
  # GET /teachers/1.json
  def show
    respond_to do |format|
      format.json { render json: {teacher: @teacher}, status: :ok }
    end
  end

  # GET /teachers/new
  def new
    @teacher = Teacher.new
  end

  # GET /teachers/1/edit
  def edit
  end

  # POST /teachers
  # POST /teachers.json
  def create
    @teacher = Teacher.new(teacher_params)
    respond_to do |format|
      if @teacher.save
        format.json { render json: {teacher: @teacher}, status: :ok }
      else
        format.html { render :new }
        format.json { render json: @teacher.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /teachers/1
  # PATCH/PUT /teachers/1.json
  def update
    respond_to do |format|
      if @teacher.update(teacher_params)
        format.html { redirect_to @teacher, notice: 'Teacher was successfully updated.' }
        format.json { render :show, status: :ok, location: @teacher }
      else
        format.html { render :edit }
        format.json { render json: @teacher.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teachers/1
  # DELETE /teachers/1.json
  def destroy
    @teacher.destroy
    respond_to do |format|
      format.html { redirect_to teachers_url, notice: 'Teacher was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_teacher
      @teacher = Teacher.find(params[:id])
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def teacher_params
      params.require(:teacher).permit(:name, :specialisation, :college_id, 
        :designation, :dob, :gender,:nationality,:marital_status,:spouse_name,:address, :contact_number,
        :secondary_school, :senior_secondary_school, :email, :graduation, :post_graduation, :higher_secondary_school)
    end
end
