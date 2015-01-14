class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to @user
    else
      render register_path
    end
  end

  private
    def user_params
      params.require(:user).permit(:username, :password)
    end
end
