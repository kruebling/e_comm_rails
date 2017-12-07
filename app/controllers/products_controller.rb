class ProductsController < ApplicationController
  autocomplete :product, :name
end
