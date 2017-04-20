class Movie < ActiveRecord::Base
  has_many :reviews
  has_many :movie_categories
  has_many :categories, through: :movie_categories

  def self.average_rating
    self.joins(:reviews).average(:rating).to_f
  end

  def self.eighties
    self.where(release_year: (1980..1989) )
  end

  def self.average_rating_eighties_movies
    self.eighties.average_rating
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
