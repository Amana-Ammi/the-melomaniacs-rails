class MusicSerializer < ActiveModel::Serializer
  attributes :id, :name, :artist, :album, :genre, :image, :preview, :popularity, :spotify_id
end
