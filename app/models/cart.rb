class Cart < ActiveRecord::Base
  has_many :session_items
  has_many :products, through: :session_items
end
