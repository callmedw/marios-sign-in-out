class Product < ActiveRecord::Base
  has_many :reviews
  validates :name, :presence => true
  validates :image, :presence => true
  validates :cost, :presence => true
  validates :description, :presence => true
  validates :country_origin, :presence => true

  scope :creationNew, -> { order(created_at: :desc).limit(5)}
  scope :alpha, -> { order(name: :asc)}
  scope :mostReviews, -> {(
    select("products.id, products.name, count(reviews.id) as reviews_count")
      .joins(:reviews)
      .group("products.id")
      .order("reviews_count DESC")
      .limit(5)
    )}
  scope :local, -> { where(country_origin: "United States")}

end
