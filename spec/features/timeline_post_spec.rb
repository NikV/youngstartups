require 'rails_helper'

# A Timeline Post should be created in the following scenarios:
# * User updates via the main directory page
# * A user is accepted into Young Startups
# * A user adds a project to the timeline
feature "Timeline Post" do
  let(:user){ User.create!(name: "Paul Millar", email: "paul@digitaldawn.com.au",
                           password: "password", accepted: true) }

  before :each do
    user
    visit login_path
    fill_in "Email", with: user.email
    fill_in "Password", with: "password"
    click_button "Sign in"
    expect(page).to have_content "Login Successful"
  end

  context "via the main directory page" do

    before(:each) do
      click_link "Directory"
    end

    it "posts to the timeline" do
    end
  end

  context "when user is accepted into young startups" do
  end

  context "when user adds a project" do
  end

end
