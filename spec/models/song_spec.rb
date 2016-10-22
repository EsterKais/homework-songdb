require 'rails_helper'

RSpec.describe Song, type: :model do
  describe "validations" do
    it "is invalid without a name" do
      song = Song.new(name: "")
      song.valid?
      expect(song.errors).to have_key(:name)
    end
  end

  describe "associations" do
    let(:artist) { create :artist }
    it "belongs to an artist" do
      song = artist.songs.new(name:"Love is Easy")

      expect(song.artist).to eq(artist)
    end
  end
end
