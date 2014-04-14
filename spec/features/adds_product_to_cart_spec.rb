require 'spec_helper'

describe Cart do
  it 'allows customers to add products to their cart' do 
    user = create(:user)
    cart = create(:cart)
    visit new_session_path
    fill_in 'Email', with: "admin"
    fill_in 'Password', with: "admin"
    click_button 'Log In'
    cart = create(:cart)
    click_link 'Add a new Product'
    fill_in 'What is the name of the product?', with: 'undies'
    fill_in 'Enter the price', with: '10'
    fill_in 'Enter the description', with: 'tight, and white!'
    click_button 'Create Product'
    click_link 'undies'
    page.should have_content 'tight, and white!'
    click_button 'Add to Cart'
    page.should have_content 'undies'
  end
end