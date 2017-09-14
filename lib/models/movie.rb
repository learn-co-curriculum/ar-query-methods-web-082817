class Movie < ActiveRecord::Base
  has_many :reviews
  has_many :movie_categories
  has_many :categories, through: :movie_categories

  def self.eighties
    self.where(release_year: (1980..1989))
  end

  def self.highest_rated_eighties_movie

  end

  def self.highest_rated

  end

  def self.lowest_rated

  end

  def self.most_reviewed
  # RAW SQL
  # SELECT * FROM movies INNER JOIN reviews ON reviews.movie_id = movies.id GROUP BY movies.id ORDER BY COUNT(reviews.movie_id) DESC

  # AR method
  self.joins(:reviews).group('movies.id').order('COUNT(reviews.movie_id) DESC').limit(1).first

   # ruby iterative, n + 1
  #  Movie.all.max_by do |movie|
  #    movie.reviews.length
  #  end
  end

  def average_rating
    # Raw SQL
    # SELECT AVG("reviews"."rating") FROM "reviews" WHERE "reviews"."movie_id" = ?  [["movie_id", 1]]
    self.reviews.average(:rating)

    # ruby iterative
    # total = 0
    # self.reviews.each do |review|
    #   total += review.rating
    # end
    #
    # total / self.reviews.length
  end

  def number_of_reviews

  end

end
