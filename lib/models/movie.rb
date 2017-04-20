class Movie < ActiveRecord::Base
  has_many :reviews
  has_many :movie_categories
  has_many :categories, through: :movie_categories

  def self.average_rating
    # Find me the average rating for ALL of the movies, not just one particular movie
  end

  def self.eighties
    # Find me all of the movies that have a release year between 1980 and 1989
  end

  def self.average_rating_eighties_movies
    # this should return the average rating for all of the moveis that were released between 1980 and 1989
  end

  def self.highest_rated

  end

  def self.lowest_rated
  end

  def self.most_reviewed

  end

  def average_rating
    self.reviews.average(:rating).to_f
  end

  def number_of_reviews
    self.reviews.count
  end

end
