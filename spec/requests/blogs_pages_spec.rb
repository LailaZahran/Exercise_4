require 'spec_helper'

describe "BlogsPages" do
  describe "GET /home" do
    it "should have the right title" do 
      visit root_path
      page.should have_selector('title', text: "Demo App")
      page.should have_selector('h1', text: "Hello, world!")
      page.should have_selector('title', text: full_title(''))
    end
  end


  # You must check that the title is correct, the <h1> header in each page is correct!
# AND that the links take you to the correct place.!
   describe "GET about" do
     it "should have the right title" do 
      visit about_path
      page.should have_selector('title', text: "Demo App | About us")
      page.should have_selector('h1', text: "About us")
      page.should have_selector('title', text: full_title('About us'))
    end
  end

  it "should have the right link" do
    visit root_path
    click_link "About"
    page.should have_selector 'h1', text: 'About Us'
  end

end
