class AdminController < ApplicationController

  def show
    @admin = Admin.find(params[:id])
  end


  def admin_params
      params.require(:admin).permit(:name, :email, :password,
                                 :password_confirmation)
  end

end
