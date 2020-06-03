class ArtistsController < ApplicationController
  before_action :set_artist, only: [:show, :edit, :update, :destroy]
  before_action :set_billboard_chart

  def index
   @artists = @billboard_chart.artists
  end

  def show
  end

  def new
    @artist = @billboard_chart.artists.new
    render partial: "form"
  end

  def create
    @artist = @billboard_chart.artists.new(artist_params)
    if @artist.save
      redirect_to [@billboard_chart, @artist]
    else
      render :new
    end
  end

  def edit
    render partial: "form"
  end

  def update
    if @artist.update(artist_params)
      redirect_to [@billboard_chart, @artist]
    else
      render :edit
    end
  end

  def destroy 
    @artist.destroy
    redirect_to billboard_chart_artist_path(@billboard_chart)
  end

  private
    def artist_params
      params.require(:artist).permit(:name)
    end

    def set_artist
      @artist =  Artist.find(params[:id])
    end

    def set_billboard_chart
      @billboard_chart = BillboardChart.find(params[:billboard_chart_id])
    end
    
end