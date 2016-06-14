# Feature test
require 'rails_helper'

RSpec.feature "User submits a new artist" do
  scenario "they see the page for the individual artist" do
# As a user
# set up data
    artist_name = "Bob Marley"
    artist_image_path = "http://cps-static.rovicorp.com/3/JPG_400/MI0003/146/MI0003146038.jpg"

# when i visit artists index
    visit artists_path

# and I click on "New Artist"
    click_on "New Artist"

# and I fill in a name
    fill_in "artist_name", with: artist_name

# and I fill in an image path
    fill_in "artist_image_path", with: artist_image_path

# and I click "Create Artist"
    click_on "Create Artist"

# Then I should see the artist name and image on the page
    expect(page).to have_content artist_name
    expect(page).to have_css("img[src=\"#{artist_image_path}\"]")
  end
end
