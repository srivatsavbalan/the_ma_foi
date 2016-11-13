class RequestRatingsController < ApplicationController
  before_action :set_request_rating, only: [:show, :edit, :update, :destroy]

  # GET /request_ratings
  # GET /request_ratings.json
  def index
    # if params[:teacher_id]
    #   @request_ratings = RequestRating.all
    # else 
      @request_ratings = RequestRating.where(teacher_id: params[:teacher_id])
    # end
    respond_to do |format|
      format.json { render json: {request_ratings: @request_ratings}, status: :ok }
    end
  end

  # GET /request_ratings/1
  # GET /request_ratings/1.json
  def show
    respond_to do |format|
      format.json { render json: {request_rating: @request_rating}, status: :ok }
    end
  end

  # GET /request_ratings/new
  def new
    @request_rating = RequestRating.new
  end

  # GET /request_ratings/1/edit
  def edit
  end

  # POST /request_ratings
  # POST /request_ratings.json
  def create
    @request_rating = RequestRating.new(request_rating_params)
    @request_rating.status = "false"
    respond_to do |format|
      if @request_rating.save
        format.json { render json: {request_rating: @request_rating}, status: :ok }
        format.json { render :show, status: :created, location: @request_rating }
      else
        format.json { render json: @request_rating.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /request_ratings/1
  # PATCH/PUT /request_ratings/1.json
  def update
    respond_to do |format|
      if @request_rating.update(request_rating_params)
        format.html { redirect_to @request_rating, notice: 'Request rating was successfully updated.' }
        format.json { render :show, status: :ok, location: @request_rating }
      else
        format.html { render :edit }
        format.json { render json: @request_rating.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /request_ratings/1
  # DELETE /request_ratings/1.json
  def destroy
    @request_rating.destroy
    respond_to do |format|
      format.html { redirect_to request_ratings_url, notice: 'Request rating was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_request_rating
      @request_rating = RequestRating.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def request_rating_params
      params.require(:request_rating).permit(:student_id, :skill_id, :teacher_id, :status)
    end
end
