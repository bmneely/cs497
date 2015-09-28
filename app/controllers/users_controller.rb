class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    authorize @user
    if @user.update(user_params)
      redirect_to @user, notice: "#{ @user.name } was successfully updated."
    else
      render action: 'edit'
    end
  end

  def user_params
    params.require(:user).permit(:name, :email, :bio)
  end
end
