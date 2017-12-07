class ProductsController < ApplicationController
  def user_params
  params.require(:product).permit(:name, :price, :image)
end
end
