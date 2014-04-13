require 'spec_helper'

describe Product do
	context 'editing product' do 
		it 'allows admins to access edit page' do 
			user = create(:user)
			visit new_session_path
			fill_in 'Email', with: "admin"
			fill_in 'Password', with: "admin"
			click_button 'Log In'
			click_link 'Add a new Product'
			fill_in 'What is the name of the product?', with: 'undies'
			fill_in 'Enter the price', with: '10.00'
			fill_in 'Enter the description', with: 'tight, and white!'
			click_button 'Create Product'
			page.should have_content 'undies'
			click_link 'undies'
			click_link 'Edit Product'
			fill_in 'What is the name of the product?', with: 'socks'
			click_button 'Update Product'
			page.should have_content 'socks'
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
