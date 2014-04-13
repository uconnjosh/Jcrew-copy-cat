require 'spec_helper'

describe Product do
	context 'viewing products' do 
		it 'allows the customer to see all products by visiting the root' do
		    cart = create(:cart) 
			visit root_path
			page.should have_content 'Dumb products:'
		end
	end
end



