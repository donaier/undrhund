class PostsController < ApplicationController

  def create
    Post.create(post_params)
    redirect_to topic_path(params[:topic_id])
  end

  private

  def post_params
    params.require(:post).permit(:topic_id, :clan_member_id, :text)
  end
end
