class SongsController < ApplicationController

  def create
    @song = Song.create(strong_params)
    redirect_to @song
  end

  def new
    @song = Song.new
  end

  def show
    # @genre = Genre.find_by(:id params[:id])
    @song = Song.find_by(id: params[:id])
  end

  def edit
    @song = Song.find_by(id: params[:id])
  end

  def update
    @song = Song.find_by(id: params[:id])
    @song.update(strong_params)
    redirect_to @song
  end

  def index
    @songs = Song.all
  end

  private

  def strong_params
    params.require(:song).permit(:name, :artist_id, :genre_id)
  end

end
