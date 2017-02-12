class SearchesController < ApplicationController

  def index
    @search_results = []
    @restaurants = Restaurant.all
    @restaurants.each do |restaurant|
      if restaurant.remain_seat_search(params[:date]) > params[:party_size].to_i
        @search_results << restaurant
      end
    end
    @search_results

  end

end
