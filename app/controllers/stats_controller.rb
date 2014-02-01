class StatsController < ApplicationController
  def index
  end

  def create
    @user_id = params[:user_id]
  end
end
