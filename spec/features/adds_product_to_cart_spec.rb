require 'spec_helper'

describe Product do
	context 'adding products to cart' do 
		it 'allows customers to add products to their cart' do 
			user = create(:user)
			visit new_session_path
			fill_in 'Email', with: "admin"
			fill_in 'Password', with: "admin"
			cart = create(:cart)
			click_button 'Log In'
			click_link 'Add a new Product'
			fill_in 'What is the name of the product?', with: 'undies'
			fill_in 'Enter the price', with: '10'
			fill_in 'Enter the description', with: 'tight, and white!'
			click_button 'Create Product'
			click_link 'undies'
			page.should have_content 'tight, and white!'
			click_link 'Add To Cart'
			page.should have_content 'Your dumb cart:'
		end
	end
end