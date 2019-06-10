class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def show
    @song = Song.find_by(id: params[:id])
  end

  def new
    # binding.pry
    @song = Song.new
    @artist_selection = Artist.all.map {|artist| [artist.name, artist.id]}
    @genre_selection = Genre.all.map {|genre| [genre.name, genre.id]}
  end

  def create
    song = Song.create(song_params(:name, :artist_id, :genre_id))
    redirect_to "/songs/#{song.id}"
  end

  def edit
    @song = Song.find_by(id: params[:id])
    @artist_selection = Artist.all.map {|artist| [artist.name, artist.id]}
    @genre_selection = Genre.all.map {|genre| [genre.name, genre.id]}
  end

  def update
    song = Song.find_by(id: params[:id])
    song.update(song_params(:name, :artist_id, :genre_id))
    redirect_to "/songs/#{song.id}"
  end
end

private

def song_params(*args)
  params.require(:song).permit(*args)
end
