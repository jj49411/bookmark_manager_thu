feature "Bookmarks" do

  scenario "shows my bookmarks" do
    visit '/'
    click_on "See Bookmarks"
    expect(page).to have_content("https://github.com")
    expect(page).to have_content("https://google.com")
  end

end
