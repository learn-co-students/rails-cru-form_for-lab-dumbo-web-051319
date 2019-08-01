class ArtistsController<ApplicationController

  def index
    @artists = Artist.all
  end

  def show
    # byebug
    @artist = Artist.find(params[:id])
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.create(artist_params)
    redirect_to "/artists"
  end

  def edit
    @artist = Artist.find(params[:id])
    # redirect_to "/artists/"
  end

  def update
    @artist = Artist.find(params[:id])
    # byebug
    @artist.update(artist_params)
    redirect_to artists_path(@artist)
  end

  def destroy
    @artist = Artist.find(params[:id])
    @artist.delete
    redirect_to "/artists"
  end

  private

  def artist_params
    params.require(:artist).permit(:name,:bio)
  end

end
