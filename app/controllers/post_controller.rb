class PostController < ApplicationController

  belongs_to :admin

  def post_params
      params.require(:post).permit(:content)
  end

end
