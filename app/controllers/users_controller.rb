class UsersController < ApplicationController

  def show
   @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
      if @user.save
        flash[:success] = "Welcome to JMA"
        redirect_to @user
      else
        render 'new'
      end
  end

  def new
    @user = User.new
  end


  def user_params
      params.require(:user).permit(:name, :email, :password,
                                 :password_confirmation)
  end

end
