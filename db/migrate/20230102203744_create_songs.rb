class CreateSongs < ActiveRecord::Migration[7.0]
  def change
    create_table :songs do |t|
      t.string :title
      t.string :artist
      t.integer :bpm
      t.integer :length
      t.string :stepartist
      t.integer :single_novice
      t.integer :single_easy
      t.integer :single_medium
      t.integer :single_hard
      t.integer :single_expert
      t.integer :single_edit
      t.integer :double_novice
      t.integer :double_easy
      t.integer :double_medium
      t.integer :double_hard
      t.integer :double_expert
      t.integer :double_edit
      t.references :pack, null: false, foreign_key: true

      t.timestamps
    end
  end
end
