class AdminController < ApplicationController

  has_many :posts

  def admin_params
      params.require(:admin).permit(:name, :email, :password,
                                 :password_confirmation)
  end

end
