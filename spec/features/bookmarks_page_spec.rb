require 'pg'

feature "Viewing bookmarks" do

  scenario "shows my bookmarks" do
    Bookmark.add('http://www.makersacademy.com', 'Makers Academy')
    Bookmark.add('http://www.destroyallsoftware.com', 'Destroy all software')
    Bookmark.add('http://www.google.com', "Google")
      
    visit '/bookmarks'
    expect(page).to have_link("Makers Academy", href: "http://www.makersacademy.com")
    expect(page).to have_link("Destroy all software", href: 'http://www.destroyallsoftware.com')
    expect(page).to have_link("Google", href: 'http://www.google.com')
  end

end
