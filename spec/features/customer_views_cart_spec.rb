require 'spec_helper'

describe Cart do
	context 'viewing the cart' do 
		it 'allows the customer to see their cart' do 
			cart = create(:cart)
			visit root_path
			click_link 'View Cart'
			page.should have_content "Your Dumb Cart:"
		end
	end
end


