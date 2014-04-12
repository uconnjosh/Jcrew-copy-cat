require 'spec_helper'

describe Product do
	context 'admin log in' do 
		it 'allows the admin to log in and view admin bar' do 
			user = create(:user)
			visit new_session_path
			fill_in 'Email', with: "admin"
			fill_in 'Password', with: "admin"
			click_button 'Log In'
            page.should have_content "ADMINISTRATION BAR"


			# click_link 'Add a new Product'
			# page.should have_content 'Add a product'
		end
	end
end

