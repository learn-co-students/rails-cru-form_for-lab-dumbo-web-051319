class GenresController < ApplicationController

  def create
    @genre = Genre.create(strong_params)
    redirect_to @genre
  end

  def new
    @genre = Genre.new
  end

  def show
    @genre = Genre.find_by(id: params[:id])
  end

  def edit
    @genre = Genre.find_by(id: params[:id])
  end

  def update
    @genre = Genre.find_by(id: params[:id])
    @genre.update(strong_params)
    redirect_to @genre
  end

  def strong_params
    params.require(:genre).permit(:name)
  end

end
