class CreateCart < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      t.integer :product_id
    end
  end
end
