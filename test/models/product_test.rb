require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  def test_return_name_and_category
    my_test_product = Product.new(name: "Ausie", category: :food)
    assert "name: Ausie, category: food", my_test_product.return_name_and_category
  end
end
