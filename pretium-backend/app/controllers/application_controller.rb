class ApplicationController < ActionController::Base
  before_action :validate_login
  protect_from_forgery

  def validate_login
    auth_token  = params["auth_token"]
    userid = params["userid"]
    p auth_token, userid
    @current_user = User.where(id: userid, token: auth_token).first
    p @current_user
    unless @current_user
      respond_to do |format|
          format.json { render json: "unauthorized access", status: :unprocessable_entity }
      end
    end
  end
end
