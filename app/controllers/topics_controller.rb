class TopicsController < ApplicationController

  def index
    @topics = Topic.all
  end

  def show
    @topic = Topic.find(params[:id])
    @post = Post.new(topic_id: params[:id], clan_member_id: current_clan_member.id)
  end
end
