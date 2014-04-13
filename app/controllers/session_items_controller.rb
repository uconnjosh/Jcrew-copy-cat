class SessionItemsController < ApplicationController
	def new
		@session_item = Session_item.new
	end
	def create
		@session_item = Session_item.new(session_item_params)
		@session_item.save
		redirect_to '/products'
	end

private

  def session_item_params
    params.require(:session_item).permit(:cart_id, :product_id)

  end
end
