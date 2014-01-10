class CreateSkins < ActiveRecord::Migration
  def change
    create_table :skins do |t|
      t.string :name
      t.string :collection
      t.string :quality
      t.boolean :stattrak
      t.boolean :souvenir
      t.boolean :boxed
      t.string :image
      t.integer :weapon_id

      t.timestamps
    end
  end
end
