require 'spec_helper'

describe "UserPages" do

  subject { page }

  describe "signup page" do

    before { visit signup_path }

    it { should have_selector('h1',    text: 'Sign up') }
    it { should have_selector('title', text: full_title('Sign up')) }
  end

  describe "profile page" do
    let(:user) { FactoryGirl.create(:user) }
    before { visit user_path(user) }

    it { should have_selector('h1', text: user.name) }
    it { should have_selector('title', text: user.name)}
  end

  describe "Signup process" do
    before { visit signup_path }
    
    describe "with invalid data" do
      it "should not create a user" do
        expect { click_button "Create my account" }.not_to change(User, :count)
      end
    end
    
    describe "with valid info" do
      before do
        fill_in "Name",           with: "Example user"
        fill_in "Email",            with: "example@railstutorial.com"
        fill_in "Password",      with: "foobar"
        fill_in "Confirmation", with: "foobar"
      end
      it "should create user" do
        expect do
          click_button "Create my account"
        end.to change(User, :count).by(1)
      end
      
#      describe "after saving the user" do
#        before { click_button submit }
#        let(:user) { User.find_by_email('user@example.com') }
#
#        it { should have_selector('title', text: user.name) }
#        it { should have_selector('div.alert.alert-success', text: 'Welcome') }
#        it { should have_link('Sign out') }
#      end
      
    end
    
  end
  
  
  
  
end
