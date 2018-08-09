class Api::SessionsController < ApplicationController

  # no render methods applied

  def create
    @user = User.find_by_credentials(
      params[:user][:email],
      params[:user][:password]
    )
    if @user
      login(@user)
      render "api/users/show"
    else
      render json: ['Incorrect username or password'], status: 401
    end
  end

  def destroy
    @user = current_user
    if @user
      logout
      render "api/users/show"
    else
      render json: ['Already logged out'], status: 401
    end
  end
end
