class ServedCitiesController < ApplicationController
  before_action :set_served_city, only: [:show, :edit, :update, :destroy]

  # GET /served_cities
  # GET /served_cities.json
  def index
    @served_cities = ServedCity.all
  end

  # GET /served_cities/1
  # GET /served_cities/1.json
  def show
  end

  # GET /served_cities/new
  def new
    @served_city = ServedCity.new
  end

  # GET /served_cities/1/edit
  def edit
  end

  # POST /served_cities
  # POST /served_cities.json
  def create
    @served_city = ServedCity.new(served_city_params)

    respond_to do |format|
      if @served_city.save
        format.html { redirect_to @served_city, notice: 'Served city was successfully created.' }
        format.json { render :show, status: :created, location: @served_city }
      else
        format.html { render :new }
        format.json { render json: @served_city.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /served_cities/1
  # PATCH/PUT /served_cities/1.json
  def update
    respond_to do |format|
      if @served_city.update(served_city_params)
        format.html { redirect_to @served_city, notice: 'Served city was successfully updated.' }
        format.json { render :show, status: :ok, location: @served_city }
      else
        format.html { render :edit }
        format.json { render json: @served_city.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /served_cities/1
  # DELETE /served_cities/1.json
  def destroy
    @served_city.destroy
    respond_to do |format|
      format.html { redirect_to served_cities_url, notice: 'Served city was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_served_city
      @served_city = ServedCity.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def served_city_params
      params.require(:served_city).permit(:name)
    end
end
