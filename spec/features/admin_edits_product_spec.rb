require 'spec_helper'

describe Product do
	context 'editing product' do 
		it 'allows admins to access edit page' do 
			visit product_path
			click_link 'Edit Product'
			page.should have_content 'Update Product'
		end
	end
end




# feature 'Admin edits product' do
#    admin_edits_product
	 
# 	expect(page).to have_content('Update Product')
#  end


#   def admin_edits_product
#     visit product_path
# 	click_button 'Edit Product'
#   end
