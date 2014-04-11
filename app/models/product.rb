class Product < ActiveRecord::Base
  has_attached_file :picture, :styles => { :thumb => ["32x32#", :jpg], :medium => ["300x300#", :jpg] }
  validates_attachment_content_type :picture, :content_type => /\Aimage\/.*\Z/

  has_many :carts
 end
