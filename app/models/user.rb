class User < ActiveRecord::Base
    has_many :reviews
    has_many :products, through: :reviews

    def favorite_product
        products.order("reviews.star_rating DESC").first
    end

    def remove_reviews(product)
        reviews.where(product_id: product.id).destroy_all
    end

end