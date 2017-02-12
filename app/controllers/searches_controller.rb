class SearchesController < ApplicationController

  def index
    @restaurants = Restaurant.all
    cuisines = @restaurants.map{|r| [r.id, r.cuisine] }
    @restaurants = Restaurant.where(cuisine: cuisines[params[:cuisine].to_i])
  end
  
end
