class SongsController < ApplicationController

  def new
    @song = Song.new
  end

  def create
    @songs = Song.all
    @song = Song.create(song_params)
  end

  def delete
    @song = Song.find(params[:song_id])
  end

  def destroy
    #@songs = Song.all
    @song = Song.find(params[:id])
    @song.destroy

  end

  private
    def song_params
      params.require(:song).permit(:name, :artist_id)
    end

end
