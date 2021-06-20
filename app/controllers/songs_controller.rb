class SongsController < ApplicationController
  def index
    songs = Song.all
    render json: songs.as_json
  end

  def show
    the_id = params[:id]
    song = Song.find_by(id: the_id)
    render json: song.as_json
  end

  def create
    song = Song.new(
      title: params[:title],
      album: params[:album],
      artist: params[:artist],
      year: params[:year]
    )
    song.save
    render json: song.as_json
  end
end
