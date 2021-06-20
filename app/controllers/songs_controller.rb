class SongsController < ApplicationController
  def index
    songs = Song.all
    render json: songs.as_json
  end
end
