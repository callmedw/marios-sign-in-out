class Product < ActiveRecord::Base
  validates :name, :presence => true
  validates :image, :presence => true
  validates :cost, :presence => true
  validates :description, :presence => true
  validates :country_origin, :presence => true
end
