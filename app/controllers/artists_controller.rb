class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
  end

# define instance variable to use
  def new
    @artist = Artist.new
  end

# create an artist then redirect to it's show page
  def create
    @artist = Artist.new(artist_params)
    if @artist.save
      redirect_to @artist
    else
      render :new
    end
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
