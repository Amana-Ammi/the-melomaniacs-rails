class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string :title
      t.string :song_name
      t.string :album_name
      t.string :artist_name
      t.string :content

      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
