class Product < ActiveRecord::Base
    has_many :reviews
    has_many :users, through: :reviews

    def leave_review(user, star_rating, comment)
        Review.create(
            comment: comment,
            star_rating: star_rating,
            product_id: self.id,
            user_id: user.id
        )

    end
    
    def print_all_reviews
        all_reviews = self.reviews
        all_reviews.collect do |review|
            review.print_review
        end 
    end

    def average_rating
        reviews.average(:star_rating)
    end

end