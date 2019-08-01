class SongsController < ApplicationController

  def index
    @songs = Song.all
  end

  def show
  # byebug
    @song = Song.find(params[:id])
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.create(song_params)
    redirect_to songs_path(@song)
  end

  def edit
    @song = Song.find(params[:id])

  end

  def update
    @song = Song.find(params[:id])
    @song.update(song_params)
    redirect_to songs_path(@song)
  end

  def delete
    @song=Song.find(params[:id])
    @song.delete
    redirect_to "/songs"
  end

    private

    def song_params
      params.require(:song).permit(:name,:artist_id,:genre_id)
    end
end
