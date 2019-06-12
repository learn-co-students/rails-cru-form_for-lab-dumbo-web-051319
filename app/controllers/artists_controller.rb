class ArtistsController < ApplicationController

  def create
    @artist = Artist.create(strong_params)
    redirect_to @artist
  end

  def new
    @artist = Artist.new
  end

  def show
    @artist = Artist.find_by(id: params[:id])
  end

  def edit
    @artist = Artist.find_by(id: params[:id])
  end

  def update
    @artist = Artist.find_by(params[:id])
    @artist.update(strong_params)
    redirect_to @artist
  end

  def strong_params
    params.require(:artist).permit(:name, :bio)
  end

end
