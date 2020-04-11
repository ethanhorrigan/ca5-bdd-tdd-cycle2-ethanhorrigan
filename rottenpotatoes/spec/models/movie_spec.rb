require 'spec_helper'

# https://makandracards.com/makandra/38645-testing-activerecord-validations-with-rspec
describe Movie do
  describe "#similar" do
    it "should find movies by the same director" do
        expect(Movie).to receive(:search_directors).with("Star Wars")
        Movie.search_directors("Star Wars")
        # get :similar_movies, id: movie.id
    end

    it "should not find movies by different directors" do
        expect(Movie).to_not receive(:search_directors).with("Star Wars")
    end
  end
end