class CreateAddColumnToProducts < ActiveRecord::Migration[5.1]
  def change
      add_column(:products, :rating, :integer)
  end
end
