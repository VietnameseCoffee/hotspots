class Api::UsersController < ApplicationController

  # no render methods applied

  def create
    @user = User.new(user_params)
    if @user.save
      login(@user)
      render "api/users/show"
    else
      debugger
      render json: @user.errors.full_messages , status: 401
    end
  end

  def destroy

  end

  private

  def user_params
    params.require(:user)
    .permit(:first_name, :last_name, :email, :password, :zip, :birthday )
  end
end
