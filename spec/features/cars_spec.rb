require 'spec_helper'

feature 'Manage Cars' do
  scenario 'User can create and view list of welcome' do
    visit '/'
    expect(page).to have_content 'Welcome'
    click_on 'Add a car'
    fill_in 'Make', with: 'Honda'
    fill_in 'Model', with: 'Civic'
    click_on 'Add car'
    expect(page).to have_content 'Honda'
    expect(page).to have_content 'Civic'
  end
end