class PostController < ApplicationController

  def post_params
      params.require(:post).permit(:content)
  end

end
