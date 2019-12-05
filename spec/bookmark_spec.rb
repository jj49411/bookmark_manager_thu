require 'bookmark'

describe Bookmark do

  describe ".all" do

    it "should display all my bookmarks" do
      Bookmark.add('http://www.makersacademy.com')
      Bookmark.add('http://www.destroyallsoftware.com')
      Bookmark.add('http://www.google.com')
      

      bookmarks = Bookmark.all

      p bookmarks
      expect(bookmarks).to include("http://www.makersacademy.com")
      expect(bookmarks).to include("http://www.destroyallsoftware.com")
      expect(bookmarks).to include("http://www.google.com")
    end
  end

  describe '.add' do
    
    it 'should add a new bookmark to the list' do
      Bookmark.add("http://www.google.com")
      expect(Bookmark.all).to include "http://www.google.com"
    end
  end

end
