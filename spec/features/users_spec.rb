require 'rails_helper'

feature 'User Management' do

  scenario 'register a new user' do
    visit root_path
    expect {
      click_link 'Register'
      fill_in 'Username', with: "brian"
      fill_in 'Password', with: "a"
      fill_in 'Password confirmation', with: "a"
      click_button 'Save User'
    }.to change(User, :count).by(1)

    expect(current_path).to eq user_path(User.last)
  end

end
