class CreateSongs < ActiveRecord::Migration[7.0]
  def change
    create_table :songs do |t|
      t.string :title
      t.string :artist
      t.integer :bpm
      t.integer :length
      t.string :stepartist
      t.integer :novice
      t.integer :easy
      t.integer :medium
      t.integer :hard
      t.integer :expert
      t.integer :edit
      t.references :pack, null: false, foreign_key: true

      t.timestamps
    end
  end
end
