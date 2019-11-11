class ClocksController < ApplicationController
  before_action :set_clock, only: [:show, :edit, :update, :destroy]

  # GET /clocks
  # GET /clocks.json
  def index
    @clocks = Clock.all
    @new_clock = Clock.new
  end

  # GET /clocks/1
  # GET /clocks/1.json
  def show
  end

  # GET /clocks/new
  def new
    @clock = Clock.new
  end

  # GET /clocks/1/edit
  def edit
  end

  # POST /clocks
  # POST /clocks.json
  def create
    @clock = Clock.new(clock_params)
      if @clock.save
        redirect_to index
      else
        redirect_to index
      end
  end

  # PATCH/PUT /clocks/1
  # PATCH/PUT /clocks/1.json
  def update
    @clock.update(clock_params)
    redirect_to index
  end

  # DELETE /clocks/1
  # DELETE /clocks/1.json
  def destroy
    @clock.destroy
    redirect_to index
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clock
      @clock = Clock.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def clock_params
      params.require(:clock).permit(:first_name, :last_name, :action, :details)
    end
end
