class AddCartToProducts < ActiveRecord::Migration
  def change
    add_column :products, :cart_id, :integer
  end
end
