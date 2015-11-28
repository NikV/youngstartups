require 'rails_helper'

feature 'sign up' do

  it "user signs up" do
    visit root_path
    click_link "Request Invite"
    fill_in "Name", with: "Paul Millar"
    fill_in "Email Address", with: "paul@digitaldawn.com.au"

    within ".user_date_of_birth" do
      select 1991, from: "user[date_of_birth(1i)]"
      select "January", from: "user[date_of_birth(2i)]"
      select "09".to_i, from: "user[date_of_birth(3i)]" 
      # Doesnt like the first 0 here, which is why the to_i is here.
    end

    fill_in "What can you contribute to the community?", with: "Some stuff"
    fill_in "What are you looking for from the community?", with: "Some stuff"
    fill_in "Where did you hear about us?", with: "Friend"
    fill_in "Password", with: "password"
    click_button "Request Invite"
    expect(page).to have_content "Your request to join has been received"
  end

end
