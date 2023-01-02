class CreatePacks < ActiveRecord::Migration[7.0]
  def change
    create_table :packs do |t|
      t.string :title
      t.integer :songs
      t.string :stepartists
      t.integer :minlvl_target
      t.integer :maxlvl_target
      t.integer :minlvl_total
      t.integer :maxlvl_total
      t.integer :bpm_min
      t.integer :bpm_max
      t.integer :difficulties_min
      t.integer :difficulties_max
      t.integer :type
      t.boolean :ranked
      t.string :download

      t.timestamps
    end
  end
end
