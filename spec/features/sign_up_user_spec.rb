require 'rails_helper'

describe "the add a user process" do
  it "adds a new user" do
    visit '/'
    user = FactoryGirl.create(:user)
    click_on 'Sign up'
    expect(page).to have_content 'Sign up'
    fill_in 'User name' :with 'Dana Weiss'
    fill_in 'Email' :with 'dana@dana.com'
    click_button 'Sign Up'
    expect(page).to have_content ''
  end
end
