class ApplicationController < ActionController::Base
  # before_action :validate_login
  protect_from_forgery

  def validate_login
    auth_token  = params["auth_token"]
    userid = params["userid"]
    session[:user_id] = userid
    @current_user = User.where(id: userid, token: auth_token).first
    unless @current_user
      respond_to do |format|
          format.json { render json: "unauthorized access", status: :unprocessable_entity }
      end
    end
  end

  def current_user
    # return unless session[:user_id]
    session[:user_id] = 2
    @current_user ||= User.find(session[:user_id])
  end
end
