class ClansController < ApplicationController
  def index
    @clan_member = ClanMember.new
  end
end
