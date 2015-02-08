require 'spec_helper'
require 'rails_helper'

  describe "The signin process" do
    feature 'user can sign up' do
      scenario 'with valid email and password' do
      	visit '/users/new'
        within('form') do
          fill_in 'user[username]', with: 'test'
          fill_in 'user[email]', with: 'test@test.com'
          fill_in 'user[password]', with: 'test'
        	end
        click_on 'Sign Up'
    end
  end

  describe "Log in" do
    feature 'user can log in' do
      scenario 'with valid email and password' do
        User.create!(email: "email@test.com", password: "test")
        visit '/log-in'
        fill_in 'Email', with: 'email@test.com'
        fill_in 'Password', with: 'test'
        click_on 'Log in'
      end
    end
  end
end
