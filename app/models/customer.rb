class Customer < ActiveRecord::Base

  has_many :reviews
  has_many :restaurants, through: :reviews

  def add_review(restaurant, rating, content)
    Review.find_or_create_by(restaurant_id: restaurant.id, customer_id: self.id, content: content, rating: rating)
  end

  def num_reviews
    reviews.length
  end


end
