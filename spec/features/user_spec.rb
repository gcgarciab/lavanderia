require 'rails_helper'
require 'spec_helper'

describe 'user/new', type: :feature do
  let(:user) { User.new(name: 'Camilo', phone: '310-882-3253', email: 'gcgarciab@unal.edu.co') }

  it 'should show an user' do
    visit('/user/new')
    within('form') do
      fill_in 'user_name', with: user.name
      fill_in 'user_phone', with: user.phone
      fill_in 'user_email', with: user.email
    end

    click_button 'create user'
    expect(page).to have_content('Usuario creado ')
  end
  
end