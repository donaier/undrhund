class DeviseCreateClanMembers < ActiveRecord::Migration
  def change
    create_table(:clan_members) do |t|
      ## Database authenticatable
      t.string :username,               :null => false, :default => ""
      t.string :encrypted_password, :null => false, :default => ""

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      t.integer  :sign_in_count, :default => 0, :null => false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string   :current_sign_in_ip
      t.string   :last_sign_in_ip

      ## custom
      t.string :steam_link
      t.string :frequency
      t.string :current_rank

      t.timestamps
    end

    add_index :clan_members, :username,                :unique => true
    add_index :clan_members, :reset_password_token, :unique => true
  end
end
