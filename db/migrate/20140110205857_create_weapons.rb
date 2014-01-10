class CreateWeapons < ActiveRecord::Migration
  def change
    create_table :weapons do |t|
      t.string :name
      t.string :category
      t.boolean :available_ct
      t.boolean :available_t
      t.string :image
      t.string :icon
      t.integer :price

      t.timestamps
    end
  end
end
