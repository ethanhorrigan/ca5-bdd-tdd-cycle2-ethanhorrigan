class Movie < ActiveRecord::Base
  def self.all_ratings
    %w(G PG PG-13 NC-17 R)
  end

  # Retrieves movies from same director.
  # https://guides.rubyonrails.org/active_record_basics.html
  # Section 5: Read.
  #
  # Example:
  #
  # find all users named David who are Code Artists and sort by created_at in reverse chronological order
  # users = User.where(name: 'David', occupation: 'Code Artist').order(created_at: :desc)
  def self.similar_movies(director)
    Movie.where(:director => director)
  end

end
