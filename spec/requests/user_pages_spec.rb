require 'spec_helper'

describe "User Pages" do
  
  subject { page }

  describe "signup page" do
    before { visit signup_path }

    it { should have_selector('h1', text:'Sign up')} #PASS
    it { page_title(page).should eq( " Ruby on rails Tutorals  Sample App | Signup" )} #pass
  end
end

describe "profile Page" do
  let(:user){ FactoryGirl.create(:user) }
  before { visit user_path(user) }
  # it { should have_selector('h1', text:user.name)}#FAILS
   it { page_title(page).should eq (' Ruby on rails Tutorals  Sample App | ' +user.name) } 
end

describe 'signup' do 
  before { visit signup_path}

  let (:submit) { 'Create my account'}
  
  describe "Invalid infomation" do
 it "should not create a user" do
      #expect { click_button }.not_to change(User,:count)
      expect { click_button submit }.not_to change(User, :count)
    end
    end
  describe "with vaild infomation" do
    before do
      fill_in "Name",                with: "Example User"
      fill_in "Email",               with: "user@example.com"
      fill_in "Password",            with: "foobar"
      fill_in "Confirmation",        with: "foobar"
     end
    it "should create a user" do
      expect { click_button submit }.to change(User, :count).by(1)
    end
 end
end
