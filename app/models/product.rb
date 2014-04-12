class Product < ActiveRecord::Base
  belongs_to :cart

  has_attached_file :picture, :styles => { :thumb => ["32x32#", :jpg], :medium => ["300x300#", :jpg] }
  validates_attachment_content_type :picture, :content_type => /\Aimage\/.*\Z/
 end
