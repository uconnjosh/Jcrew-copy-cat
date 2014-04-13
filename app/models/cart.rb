class Cart < ActiveRecord::Base
  has_many :items
  has_many :products, through: :items

  def total
  	sum = 0
  	products.each do |p|
  		sum += p.price
  	end
  	sum
  end
end
