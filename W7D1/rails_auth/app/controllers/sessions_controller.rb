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
      render json: "Welcome back #{user.username}!"
    end
  end 
end