class ServedCitiesController < ApplicationController
  before_action :set_served_city, only: [:show]

  # GET /served_cities
  # GET /served_cities.json
  def index
    @served_cities = ServedCity.all
  end

  # GET /served_cities/1
  # GET /served_cities/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_served_city
      @served_city = ServedCity.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def served_city_params
      params.require(:served_city).permit(:name, :body)
    end
end
