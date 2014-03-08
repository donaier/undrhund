class ClansController < ApplicationController
  def index
    @clan_member = ClanMember.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:clan_member]
  end
end
