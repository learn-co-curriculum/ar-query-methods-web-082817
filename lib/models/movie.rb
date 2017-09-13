class Movie < ActiveRecord::Base
  has_many :reviews
  has_many :movie_categories
  has_many :categories, through: :movie_categories

  def self.eighties
    
  end

  def self.highest_rated_eighties_movie
    
  end

  def self.highest_rated

  end

  def self.lowest_rated
    
  end

  def self.most_reviewed

  end

  def average_rating
    
  end

  def number_of_reviews
    
  end

end
