require 'rails_helper'

describe "the add a product process" do
  it "adds a new product" do
    visit products_path
    click_link 'Add a New Product'
    fill_in 'product[name]', :with => 'Craftsmen Workbench'
    fill_in 'product[cost]', :with => '500.00'
    fill_in 'product[country_origin]', :with => 'United States'
    fill_in 'product[description]', :with => 'Crafts, man!'
    fill_in 'product[image]', :with => 'x'
    click_on 'Create Product'
    expect(page).to have_content 'Craftsmen Workbench'
  end
end
