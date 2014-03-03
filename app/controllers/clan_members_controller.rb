class ClanMembersController < ApplicationController
  def index
    @clan_members = ClanMember.all
  end
end
