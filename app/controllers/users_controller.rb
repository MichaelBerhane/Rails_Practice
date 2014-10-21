class UsersController < ApplicationController

  def index
   @user = User.find(1);
  end


  def user_params
      params.require(:user).permit(:name, :email, :password,
                                 :password_confirmation)
  end

end
