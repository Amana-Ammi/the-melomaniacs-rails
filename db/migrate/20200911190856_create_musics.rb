class CreateMusics < ActiveRecord::Migration[6.0]
  def change
    create_table :musics do |t|
      t.string :name
      t.string :artist
      t.string :album
      t.string :genre
      t.string :image
      t.string :preview
      t.integer :popularity
      t.string :spotify_id

      t.timestamps
    end
  end
end
