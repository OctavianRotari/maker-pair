require 'rails_helper'

feature 'github_login' do
  context 'no users have registred yet' do
    scenario 'the contains welcome' do
      visit '/'
      expect(page).to have_content('welcome')
    end

    scenario 'the page should contain log' do
      visit '/'
      expect(page).to have_content('Sign in with Github')
    end
  end

  context 'user logs in' do
    scenario 'using a github profile' do
      visit '/'
      click_link 'Sign in with Github'
      expect(page).to have_content('Successfuly logged in')
    end
  end
end
