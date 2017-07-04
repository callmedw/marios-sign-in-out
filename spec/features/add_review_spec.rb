require 'rails_helper'

describe "add a review pathway" do
  it "adds a review to a product" do
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
    expect(page).to have_content 'Review this product'
    click_on 'Review this product'
    expect(page).to have_content 'Author'
    fill_in 'review[author]', :with => 'Capybara'
    fill_in 'review[content]', :with => "You probably haven't heard of them kale chips bushwick, marfa ramps unicorn lomo gastropub chillwave truffaut man bun XOXO brooklyn pickled coloring book. Williamsburg taiyaki polaroid cronut photo booth. Sriracha meditation williamsburg, paleo fam lyft kombucha 8-bit cray venmo portland aesthetic man bun freegan. Chicharrones hot chicken helvetica sustainable pickled. Austin fingerstache cronut tofu, woke kickstarter ugh locavore polaroid XOXO try-hard seitan tbh cred. Schlitz kombucha flannel put a bird on it, affogato mlkshk iceland pug master cleanse activated charcoal bespoke. Taiyaki meditation occupy pork belly slow-carb. Food truck pork belly four loko, actually wolf echo park farm-to-table thundercats tattooed intelligentsia roof party hella deep v. VHS street art +1, jianbing pour-over poke 90's taiyaki you probably haven't heard of them. Banh mi portland brooklyn sustainable deep v. Humblebrag quinoa lyft, cliche ramps af man bun literally. Cronut chillwave narwhal butcher. Gastropub man bun hexagon, vinyl live-edge pok pok cloud bread pickled flexitarian locavore butcher gluten-free hoodie tofu jianbing."
    select "5", :from => "Rating"
    click_on 'Create Review'
    expect(page).to have_content 'kale chips'
  end
end
