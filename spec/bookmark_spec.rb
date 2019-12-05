require 'bookmark'

describe Bookmark do

  describe ".all" do

    it "should display all my bookmarks" do
      bookmark1 = Bookmark.add('http://www.makersacademy.com', 'Makers Academy')
      bookmark2 = Bookmark.add('http://www.destroyallsoftware.com', 'Destroy all software')
      bookmark3 = Bookmark.add('http://www.google.com', 'Google')
      

      bookmarks = Bookmark.all

      expect(bookmarks.length).to eq 3
      expect(bookmarks.first).to be_a Bookmark
      expect(bookmarks.first.id).to eq bookmark1.id
      expect(bookmarks.last.title).to eq 'Google'
    end
  end

  describe '.add' do
    
    it 'should add a new bookmark with url and title to the list' do
      Bookmark.add("http://www.google.com", 'Google')
      expect(Bookmark.all.first.url).to eq "http://www.google.com"
      expect(Bookmark.all.first.title).to eq "Google"
    end

  end

end
