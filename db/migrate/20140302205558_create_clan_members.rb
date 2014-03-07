class CreateClanMembers < ActiveRecord::Migration
  def change
    create_table :clan_members do |t|
      t.string :name
      t.string :steam_link
      t.string :frequency
      t.string :current_rank
      t.text   :message

      t.timestamps
    end
  end
end
