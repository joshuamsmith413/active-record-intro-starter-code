class Restaurant < ActiveRecord::Base
  has_many :reviews
  has_many :customers, through: :reviews

  def rating_array
    self.reviews.map { |list| list.rating }
  end

  def average_star_rating
    rating_array.sum / rating_array.length.to_f
  end
end
