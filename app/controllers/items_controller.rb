class ItemsController < ApplicationController
	def new
		@item = Item.new
	end
	def create
		@item = Item.new(item_params)
		@item.save
		redirect_to '/products'
	end

private

  def item_params
    params.require(:item).permit(:cart_id, :product_id)

  end
end
