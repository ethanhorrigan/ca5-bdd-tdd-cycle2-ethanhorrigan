require 'rails_helper'

describe MoviesController, type: 'controller' do

  describe "#director" do
    context "When specified movie has a director" do
      it "should find movies with the same director" do
        expect(Movie).to receive(:search_directors).with("Star Wars")
        Movie.search_directors("Star Wars")
      end
    end

    context "When specified movie has no director" do
      it "should redirect to the movies page" do
        expect(Movie).to_not receive(:search_directors).with("Star Wars")
      end
    end
  end
end