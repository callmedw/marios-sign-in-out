require 'rails_helper'

describe "the show a product's detail page pathway" do
  it "goes to individual product page" do
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
    expect(page).to have_content '500'
  end
end
