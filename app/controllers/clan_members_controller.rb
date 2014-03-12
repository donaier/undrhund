class ClanMembersController < ApplicationController
  respond_to :html

  def new
    @clan_member = ClanMember.new
  end

  def create
    @clan_member = ClanMember.new(clan_member_params)


    respond_to do |format|
      if @clan_member.save
        @clan_member.set_steam_data
        format.html { redirect_to clan_members_path }
      else
        format.html { render action: "new" }
      end
    end
  end

  def edit
    @clan_member = current_clan_member
  end

  def update
    @clan_member = current_clan_member

    respond_to do |format|
      if current_clan_member.update_attributes(clan_member_params)
        format.html { redirect_to clan_member_path(current_clan_member) }
      else
        format.html { render action: "edit" }
      end
    end
  end

  def show
    @clan_member = ClanMember.find(params[:id])
  end

  def index
    @clan_members = ClanMember.all
  end

  def update_steam_data
    current_clan_member.set_steam_data
    redirect_to clan_member_path(current_clan_member)
  end

  private

  def clan_member_params
    params.require(:clan_member).permit(:name, :steam_link, :frequency, :current_rank, :message)
  end
end
