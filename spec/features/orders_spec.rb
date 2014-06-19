require 'spec_helper'

feature 'CRUD orders' do

  scenario 'User can create a list of orders' do
    visit '/'
    expect(page).to have_content 'Welcome'
    click_on 'Add an order'
    fill_in 'Company', with: 'Apple'
    fill_in 'Product', with: 'iPhone'
    click_on 'Add order'
    expect(page).to have_content 'Apple'
    expect(page).to have_content 'iPhone'
  end

  

end