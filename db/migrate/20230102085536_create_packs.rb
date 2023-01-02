class CreatePacks < ActiveRecord::Migration[7.0]
  def change
    create_table :packs do |t|
      t.string :title
      t.string :download_link
      t.integer :song_amount
      t.string :stepartists
      t.integer :minlvl_target
      t.integer :maxlvl_target
      t.integer :minlvl_total
      t.integer :maxlvl_total
      t.integer :bpm_min
      t.integer :bpm_max
      t.integer :difficulties_min
      t.integer :difficulties_max
      t.integer :play_type
      t.integer :play_format
      t.boolean :ranked

      t.timestamps
    end
  end
end
