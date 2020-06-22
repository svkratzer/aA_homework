class SessionsController < ApplicationController

  def new
    render :new
  end

  def create
    strong_params = params[:user]

    user = User.find_by_credentials(
    strong_params[:username],
    strong_params[:password]
    )

    if user.nil? 
      render json: 'Your username or password is incorrect.'
    else
      login!(user)
      redirect_to user_url(user)
    end
  end 
end