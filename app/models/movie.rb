class Movie < ActiveRecord::Base
  def self.all_ratings
    return ['G','PG','PG-13','R']
  end
  
  def self.with_ratings(ratings_list)
    if not ratings_list.length 
      return Movie.all 
    end
    
    return Movie.where(rating: ratings_list)
  end
  
end
