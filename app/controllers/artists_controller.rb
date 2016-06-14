class ArtistsController < ApplicationController

  def index
  end

  def new
  end

# create an artist then redirect to it's show page
  def create
    @artist = Artist.create(artist_params)
    redirect_to @artist
  end

  def show
    @artist = Artist.find(params[:id])
  end

  private
# set up strong params to specify what parameters/attributes permitterd
  def artist_params
    params.require(:artist).permit(:name, :image_path)
  end
end
