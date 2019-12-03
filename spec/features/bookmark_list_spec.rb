feature "Bookmarks" do

  scenario "shows my bookmarks" do
    visit '/'
    click_on "See Bookmarks"
    expect(page).to have_content("http://www.makersacademy.com")
    expect(page).to have_content("http://www.destroyallsoftware.com")
    expect(page).to have_content("http://www.google.com")
  end

end
