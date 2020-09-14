class TracksController < ApplicationController

    def index
        @tracks = Track.all
        render json: @tracks
    end

    def show
      @track = Track.find(params[:spotify_id])
    end

    def top_100
        spot_songs = RSpotify::Playlist.find("spotify","37i9dQZF1E8KfFA7RfZyXv").tracks
        @tracks = spot_songs.map do |spot_songs|
          Track.new_from_spotify_song(spot_songs)
        end
    render json: @tracks
    end

    def random
        spot_songs = RSpotify::Playlist.browse_featured.first.tracks
        @tracks = spot_songs.map do |spot_songs|
          Track.new_from_spotify_song(spot_songs)
        end
    render json: @tracks
    end

    def search
        spot_songs = RSpotify::Track.search(params[:q])
        @songs = spot_songs.map do |spot_songs|
          Track.new_from_spotify_song(spot_songs)
        end
    render json: @songs
    end
end
