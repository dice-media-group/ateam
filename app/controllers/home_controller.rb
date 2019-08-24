class HomeController < ApplicationController
  def index
  	@served_cities = ServedCity.all.select(:id, :name)
  end

  def terms
  end

  def privacy
  end
end
