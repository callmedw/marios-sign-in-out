require 'rails_helper'

describe "the errors pathway" do
  it "gives you an error message" do
    visit products_path
    click_link 'Add a New Product'
    click_on 'Create Product'
    expect(page).to have_content 'fix these errors'
    fill_in 'product[name]', :with => 'Craftsmen Workbench'
    fill_in 'product[cost]', :with => '500.00'
    fill_in 'product[country_origin]', :with => 'United States'
    fill_in 'product[description]', :with => 'Crafts, man!'
    fill_in 'product[image]', :with => 'x'
    click_on 'Create Product'
    expect(page).to have_content 'Craftsmen Workbench'
    find('.all_products').click_on("Craftsmen Workbench")
    click_on'Edit This Product'
    click_on 'Update Product'
    expect(page).to have_content 'fix these errors'
    fill_in 'product[name]', :with => 'GIANT Workbench'
    fill_in 'product[cost]', :with => '500.00'
    fill_in 'product[country_origin]', :with => 'United States'
    fill_in 'product[description]', :with => 'Crafts, man!'
    fill_in 'product[image]', :with => 'https://ec-i21.geccdn.net/site/images/n-picgroup/30003713.jpg'
    click_on 'Update Product'
    expect(page).to have_content 'GIANT Workbench'
    click_on 'Review this product'
    expect(page).to have_content 'Author'
    click_on 'Create Review'
    expect(page).to have_content 'fix these errors'
  end
end
