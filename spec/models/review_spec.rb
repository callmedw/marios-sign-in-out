require 'rails_helper'

describe Review do
  it { should belong_to :product }
  it { should validate_presence_of :author }
  it { should validate_presence_of :content }
  it { should validate_presence_of :product_id }

  it("reutns false if review is too long") do
    product = Product.create!({name: "product", description: "product description", cost: "12.45",  country_origin: "Japan", image: "n/a"})
    review = product.reviews.create({author: "customer", content: "love it"  * 250, rating: 5 })
    expect(review.save).to eq(false)
  end

  it("returns false if review is too short") do
    product = Product.create!({name: "product", description: "product description", cost: "12.45",  country_origin: "Japan", image: "n/a"})
    review = product.reviews.create({author: "customer", content: "love it", rating: 5 })
    expect(review.save).to eq(false)
  end

  it("returns false if rating is too high") do
    product = Product.create!({name: "product", description: "product description", cost: "12.45",  country_origin: "Japan", image: "n/a"})
    review = product.reviews.create({author: "customer", content: "love it", rating: 6 })
    expect(review.save).to eq(false)
  end

  it("returns false if rating is too low") do
    product = Product.create!({name: "product", description: "product description", cost: "12.45",  country_origin: "Japan", image: "n/a"})
    review = product.reviews.create({author: "customer", content: "love it", rating: 0 })
    expect(review.save).to eq(false)
  end
end
