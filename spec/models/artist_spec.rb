require 'rails_helper'

RSpec.describe Artist, type: :model do
  describe "validations" do
    it "is invalid without a name" do
      artist = Artist.new(name: "")
      artist.valid?
      expect(artist.errors).to have_key(:name)
    end
  end

  describe "#order_by_name" do
    subject { Artist.order_by_name }
    let!(:artist_z) { create :artist, name: "Zulu"}
    let(:artist_a) { create :artist, name: "Alpha"}

    it "filters by name" do
      expect(subject).to match_array [artist_z, artist_a]
    end
  end

  describe "#order_by_date" do
    subject { Artist.order_by_date }
    let!(:artist_z) { create :artist, name: "Zulu"}
    let(:artist_a) { create :artist, name: "Alpha"}

    it "filters by name" do
      expect(subject).to match_array [artist_z, artist_a]
    end
  end
end
