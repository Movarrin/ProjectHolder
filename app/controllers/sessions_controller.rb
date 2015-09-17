# sessions_controller.rb

class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(email: session_params[:email])
    if user && user.authenticate(session_params[:password])
      session[:current_user_id] = user.id
      redirect_to application_path
    else
      redirect_to root_path
    end
  end

  def destroy
    session[:current_user_id] = nil
    redirect_to root_path
  end
  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def session_params
    params.require(:session).permit(:email, :password)
  end
end
