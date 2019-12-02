feature 'index page' do

  scenario 'it has a homepage' do
    visit '/'
    expect(page).to have_content "Bookmarks"
  end

end