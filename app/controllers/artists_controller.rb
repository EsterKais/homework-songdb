class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
  end


  def show
    @artist = Artist.find(params[:id])
    @songs = @artist.songs
    @song = Song.new

    #@songs = Song.all
    #@song = Song.find(params[:song_id])
    # @photos = @product.photos
  end

  def delete
    @artist = Artist.find(params[:artist_id])
  end

  def destroy
    @artist = Artist.find(params[:id])
    # @songs = Song.find(params[:id])
    @songs = @artist.songs
    # @songs = Song.all
    @songs.destroy
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
end
