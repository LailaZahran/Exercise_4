require 'spec_helper'

describe "UsersPages" do
  describe "GET /users_pages" do
   it "should have the right title" do 
      visit signup_path
      page.should have_selector('title', text: "Sign up")
      page.should have_selector('h1', text: "Sign up")
      #page.should have_selector('title', text: full_title ('Sign up'))
    end


  end

  it "should have the right link" do
    visit root_path
    click_link "Sign up"
    page.should have_selector 'h1', text: 'Sign up'
  end

end

