require 'spec_helper'

describe "Main navigation bar" do
  it "should have Luinjo banner/logo" do
    visit root_path
    expect(page).to have_selector('img.navbar-brand')
  end

  it "should have a link to Information Cone list" do
    visit root_path
    expect(find_link('Information Cones').visible?).to be(true)
  end

  context "when not signed in" do
    context "should present" do
      it "a link to Sign In" do
        visit root_path
        expect(find_link('Login').visible?).to be(true)
      end
      it "a link to Sign Up" do
        visit root_path
        expect(find_link('Sign up').visible?).to be(true)
      end
    end
  end

  context "when signed in" do
    let(:user) { Fabricate(:user) }
    before :each do
      visit new_user_session_path
      within '#new_user' do
        fill_in 'user[login]', with: user.username
        fill_in 'user[password]', with: user.password
        click_button 'Log in'
      end
    end
    
    context "should present" do
      it "a link to Sign Out" do
        visit root_path
        expect(find_link('Logout').visible?).to be(true)
      end

      it "a link to Edit Account" do
        visit root_path
        expect(find_link('Edit account').visible?).to be(true)
      end
    end
  end
end
