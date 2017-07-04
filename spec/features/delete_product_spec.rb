require 'rails_helper'

describe "the delete a product pathway" do
  it "deletes an existing product" do
    visit products_path
    click_link 'Add a New Product'
    fill_in 'product[name]', :with => 'Craftsmen Workbench'
    fill_in 'product[cost]', :with => '500.00'
    fill_in 'product[country_origin]', :with => 'United States'
    fill_in 'product[description]', :with => 'Crafts, man!'
    fill_in 'product[image]', :with => 'https://ec-i21.geccdn.net/site/images/n-picgroup/30003713.jpg'
    click_on 'Create Product'
    expect(page).to have_content 'Craftsmen Workbench'
    find('.all_products').click_on("Craftsmen Workbench")
    expect(page).to have_content 'Remove this product'
    click_on 'Remove this product'
    expect(page).to have_content "Mario's"
  end
end
