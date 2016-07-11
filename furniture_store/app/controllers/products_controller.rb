class ProductsController < ApplicationController
  def index
    render template: 'products/index.html.erb', locals: { products: Product.all }
  end

  def show
    if Product.exists?(params[:id])
      render template: 'products/show.html.erb', locals: { product: Product.find(params[:id]) }
    else
      render html: 'Product not found', status: 404
    end
  end
end
