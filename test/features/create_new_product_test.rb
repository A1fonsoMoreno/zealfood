require "test_helper"

class CreateNewProductTest < Capybara::Rails::TestCase
  test "Valid Data" do
    visit new_product_path
    fill_in "Name", with: "Ausie"
    select "Food", from: "Category"
    click_on "Create Product"
    within "#flash-messages" do
      assert page.has_text?("Great Job")
    end
  end
end
