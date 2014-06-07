require 'spec_helper'

feature 'Manage Cars' do
  scenario 'User can create and view list of cars' do
    visit '/'
    expect(page).to have_content 'Welcome'
    click_on 'Add a car'
    fill_in 'Make', with: 'Honda'
    fill_in 'Model', with: 'Civic'
    click_on 'Add car'
    expect(page).to have_content 'Honda'
    expect(page).to have_content 'Civic'
  end

  scenario 'User can edit and update car' do
    visit '/'
    click_on 'Add a car'
    fill_in 'Make', with: 'Honda'
    fill_in 'Model', with: 'Civic'
    click_on 'Add car'
    expect(page).to have_content 'Honda'
    expect(page).to have_content 'Civic'
    click_on 'Honda'
    expect(page).to have_content 'Honda'
    expect(page).to have_content 'Civic'
    click_on 'Edit car'
    fill_in 'Make', with: 'Toyota'
    fill_in 'Model', with: 'Corolla'
    click_on 'Update car'
    expect(page).to have_content 'Toyota'
    expect(page).to have_content 'Corolla'
    expect(page).to have_no_content 'Honda'
    expect(page).to have_no_content 'Civic'


  end

end