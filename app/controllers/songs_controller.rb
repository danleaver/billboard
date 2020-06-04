class SongsController < ApplicationController
  before_action :set_song, only: [:show, :update, :edit, :destroy]
  before_action :set_artist

  def index
    @songs = @artist.songs
  end

  def show
  end

  def new
    @song = @artist.songs.new
    render partial: "form"
  end

  def create
    @song = @artist.songs.new(songs_params)
    if @song.save
       redirect_to [@artist]
    else 
      render :new
    end
  end

  def edit
    render partial: "form"
  end

  def destroy
    @song.destroy
     redirect_to artist_songs_path(@artist)
  end
  private

  def songs_params
    params.require(:song).permit(:song_title, :album_name)
  end

  def set_song
    @song = Song.find(params[:id])
  end

  def set_artist
    @artist = Artist.find(params[:artist_id])
  end
end
