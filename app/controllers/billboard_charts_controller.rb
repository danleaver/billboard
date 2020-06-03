class BillboardChartsController < ApplicationController

  before_action :set_billboard_chart, only: [:show, :edit, :destroy, :update]
  

  def index
    @billboard_charts = BillboardChart.all
  end

  def show
    # @billboard_chart = BillbardChart.find(params[:id]) is being called before action
  end

  def new
    @billboard_chart = BillboardChart.new 
    render partial: "form"
  end

  def create
    @billboard_chart = BillboardChart.new(billboard_charts_params)
    if @billboard_chart.save
      redirect_to billboard_charts_path
    else
      render :new
    end
  end

  def edit
    # @billboard_chart = BillbardChart.find(params[:id]) is being called before action
    render partial: "form"
  end

  def update
    if @billboard_chart.update(billboard_charts_params)
      redirect_to @billboard_chart
      # redirect_to billboard_charts_path(@billboard_chart)
    else
      render :edit
    end
  end

  def destroy
    # @billboard_chart = BillbardChart.find(params[:id]) is being called before action
    @billboard_chart.destroy
    redirect_to billboard_charts_path
  end

  private

  def billboard_charts_params
    params.require(:billboard_chart).permit(:title)
  end

  def set_billboard_chart
    @billboard_chart = BillboardChart.find(params[:id])
  end
end
