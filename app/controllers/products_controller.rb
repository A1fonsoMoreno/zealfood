class ProductsController < ApplicationController
  def new
    @product = Product.new
  end
  def create
    product = Product.new(product_params)
    if product.save
      redirect_to new_product_path, notice: "Great Job"
    else
      render :new
    end
  end
  private
  def product_params
    params.require(:product).permit(:name, :category)
  end
end
