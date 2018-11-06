class SongsController < ApplicationController

  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.create(songs_params)
    redirect_to song_path(@song)
  end

  def show
    @song = Song.find(params[:id])


  end

  def edit
    @song = Song.find(params[:id])


  end

  def update
    @song = Song.find(params[:id])
    @song.update(songs_params)
    redirect_to @song

  end

  private

  def songs_params
    params.require(:song).permit(:name, :artist_id, :genre_id)
  end

end
