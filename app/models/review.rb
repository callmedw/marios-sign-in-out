class Review < ActiveRecord::Base
  belongs_to :product
  validates :author, :presence => true
  validates :content, :presence => true
  validates :product_id, :presence => true
end
