class ClanMembersController < ApplicationController
  respond_to :html

  def new
    @clan_member = ClanMember.new
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

  def show
    @clan_member = current_clan_member if current_clan_member
  end

  def index
    @clan_members = ClanMember.all
  end

  private

  def clan_member_params
    params.require(:clan_member).permit(:name, :steam_link, :frequency, :current_rank, :message)
  end
end
