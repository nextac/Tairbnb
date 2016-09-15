class ListingsController < ApplicationController

  def new
    @listing = Listing.new
  end

  def create
    user = Listing.new(listings_params)
    user.save
  end

end
