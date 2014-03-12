class AddSteamFieldsToClanMember < ActiveRecord::Migration
  def up
    add_column :clan_members, :steam_id, :string
    add_attachment :clan_members, :avatar
  end

  def down
    remove_column :clan_members, :steam_id, :string
    remove_attachment :clan_members, :avatar
  end
end
