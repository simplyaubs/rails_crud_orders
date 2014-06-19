require 'spec_helper'

feature 'CRUD orders' do

  scenario 'User can see Welcome on homepage' do
    visit '/'
    expect(page).to have_content 'Welcome'
  end

end