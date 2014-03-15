class TopicsController < ApplicationController

  def index
    @topics = Topic.all
    @topic = Topic.new(clan_member_id: current_clan_member.id)
  end

  def create
    @topic = Topic.new(topic_params)
    @topic.update_attributes(visibility: 'visible')
    redirect_to topics_path
  end

  def show
    @topic = Topic.find(params[:id])
    @post = Post.new(topic_id: params[:id], clan_member_id: current_clan_member.id)
  end

  private

  def topic_params
    params.require(:topic).permit(:category, :clan_member_id, :title, :text, :position, :visibility)
  end
end
