class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :category
      t.integer :clan_member_id
      t.string :visibility
      t.string :title
      t.text :text
      t.boolean :sticky
      t.integer :position

      t.timestamps
    end
  end
end
