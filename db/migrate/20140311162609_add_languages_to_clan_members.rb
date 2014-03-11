class AddLanguagesToClanMembers < ActiveRecord::Migration
  def change
    add_column :clan_members, :languages, :string
  end
end
