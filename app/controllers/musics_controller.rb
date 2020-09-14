class TracksController < ApplicationController

    def index
        @songs = Track.all
        render json: @songs
    end

    def top_100
        spot_songs = RSpotify::Playlist.find("spotify","37i9dQZF1E8KfFA7RfZyXv").tracks
        @songs = spot_songs.map do |spot_songs|
          Track.new_from_spotify_song(spot_songs)
        end
    render json: @tracks
    end

    def random
        spot_songs = RSpotify::Playlist.browse_featured.first.tracks
        @songs = spot_songs.map do |spot_songs|
          Track.new_from_spotify_song(spot_songs)
        end
    render json: @songs
    end

    def search
        spot_songs = RSpotify::Track.search(params[:q])
        @songs = spot_songs.map do |spot_songs|
          Track.new_from_spotify_song(spot_songs)
        end
    render json: @songs
    end
end
