class CreateWeapons < ActiveRecord::Migration
  def change
    create_table :weapons do |t|
      t.string :name
      t.string :category
      t.boolean :available_ct
      t.boolean :available_t
      t.integer :price

      t.timestamps
    end

    add_attachment :weapons, :icon
    add_attachment :weapons, :image
  end
end
