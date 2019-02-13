class Movie < ActiveRecord::Base
  def self.all_ratings
    all_ratings = []
    Movie.all.each do |movie|
      if (!all_ratings.include?(movie.rating))
        all_ratings.push(movie.rating)
      end
    end
    return all_ratings
  end
end
