require 'bookmarks'

describe Bookmarks do

  describe "#all" do
    it "should display all my bookmarks" do
      bookmarks = Bookmarks.all
      
      expect(bookmarks).to include("https://github.com")
      expect(bookmarks).to include("https://google.com")
    end
  end

end
