class SongsController < ApplicationController

  def new
    # @song = Song.new
  end

  def create
    @song = Song.create(song_params)
    artist_id = @song.artist_id
    @artist = Artist.find(artist_id)
    @songs = @artist.songs
    # @songs = Song.find(:artist_id = artist_id)

    # @artist = Artist.find(params[id: artist_id])

  end

  def delete
    @song = Song.find(params[:song_id])
  end

  def destroy
    @song = Song.find(params[:id])
    @song.destroy

    @songs = Song.all

  end



  private
    def song_params
      params.require(:song).permit(:name, :artist_id)
    end

end
