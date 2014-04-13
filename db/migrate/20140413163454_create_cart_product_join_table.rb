class CreateCartProductJoinTable < ActiveRecord::Migration
  def change
  	create_table :session_items do |t|
  		t.integer :cart_id
  		t.integer :product_id
  	end
  end
end

