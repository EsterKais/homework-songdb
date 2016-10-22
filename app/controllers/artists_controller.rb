class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
  end

# FILTERING SYSTEM
    def order_by_name
      @artists = Artist.order_by_name
      render action: :index
    end

    def order_by_date
      @artists = Artist.order_by_date
      render action: :index
    end
# END OF FILTERING SYSTEM

  def show
    @artist = Artist.find(params[:id])
    @songs = @artist.songs
    # @photos = @product.photos
  end

end
