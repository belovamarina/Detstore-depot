class StoreController < ApplicationController
	include CurrentCart
	before_action :set_cart

	def session_count
 	 session[:counter] ||= 0
  	 session[:counter] += 1
	end

  def index
  	@session = session_count
  	@products = Product.order(:title)

  end
end
