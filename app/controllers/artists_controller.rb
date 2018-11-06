class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.create(artist_params)
    redirect_to @artist
  end



  def show
    @artist = Artist.find(params[:id])
  end


  def edit
    @artist = Artist.find(params[:id])
    #sends to edit page, then from edit view, it sends to update
  end

  def update
    @artist = Artist.find(params[:id])
    @artist.update(artist_params)
    redirect_to @artist
  end


  private
  def artist_params
    params.require(:artist).permit(:name, :bio)
  end

end
