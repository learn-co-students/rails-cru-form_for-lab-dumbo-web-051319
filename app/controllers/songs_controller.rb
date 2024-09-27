class SongsController < ApplicationController

  def index
    @songs = Song.all
  end
  def show
    @song = Song.find(params[:id])
  end
  def edit
    @song = Song.find(params[:id])
  end
  def new
    @song = Song.new
  end
  def create
    # byebug
    art_id = Artist.find_by(name: params[:song][:artist]).id
    gen_id = Genre.find_by(name: params[:song][:genre]).id
    @song = Song.create(name: params[:song][:name], artist_id: art_id, genre_id: gen_id)
    redirect_to song_path(@song)
  end
  def update
    @song = Song.find(params[:id])
    @song.update(song_params)
    redirect_to song_path(@song)
  end

  private

  def song_params
    params.require(:song).permit(:name)
  end

end
