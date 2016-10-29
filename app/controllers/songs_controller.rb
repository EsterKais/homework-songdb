class SongsController < ApplicationController

  def new
    # @song = Song.new
  end

  def create
    @song = Song.create(song_params)
    artist_id = @song.artist_id
    @artist = Artist.find(artist_id)
    @songs = @artist.songs
  end

  def delete
    @song = Song.find(params[:song_id])
  end

  def destroy
    @song = Song.find(params[:id])
    @song.destroy

    artist_id = @song.artist_id
    @artist = Artist.find(artist_id)
    @songs = @artist.songs
  end

  def delete_all
    @song = Song.find(params[:song_id])
  end

  def destroy_all
    @song = Song.find(params[:id])
    artist_id = @song.artist_id
    @artist = Artist.find(artist_id)
    @artist.songs.each(&:destroy)
  end

  private
    def song_params
      params.require(:song).permit(:name, :artist_id)
    end

end
