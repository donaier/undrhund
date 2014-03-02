class ClanMembersController < ApplicationController
  respond_to :html

  def new
    @clan_member = ClanMember.new(clan_member_params)
  end

  def create
    @clan_member = ClanMember.new(clan_member_params)


    respond_to do |format|
      if @clan_member.save
        format.html { redirect_to clan_members_path }
      else
        format.html { render action: "new" }
      end
    end
  end

  def index
    @clan_members = ClanMember.all
    if params[:clan_member].present?
      @clan_member = ClanMember.new(params[:clan_member])
    end
  end

  private

  def clan_member_params
    params.require(:clan_member).permit(:name, :steam_link, :frequency, :current_rank, :message)
  end
end
