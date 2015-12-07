require 'rails_helper'

feature 'github_login' do
  context 'no users have registred yet' do
    scenario 'the contains welcome' do
      visit '/'
      expect(page).to have_content('welcome')
    end
  end
end
