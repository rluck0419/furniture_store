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

  def new
    render locals: {
      product: Product.new
    }
  end

  def create
    product = Product.new
    product.name = params[:name]
    product.price = params[:price]
    product.picture = Faker::Avatar.image
    product.condition = params[:condition]
    product.on_clearance = params[:on_clearance]
    product.quantity = params[:quantity]
    product.category_id = params[:category_id]
  end

  def edit
    render locals: {
      product: Product.find(params[:id])
    }
  end

  def update
    product = Product.find(params[:id])
    product.name = params[:name]
    product.price = params[:price]
    product.condition = params[:condition]
    product.on_clearance = params[:on_clearance]
    product.quantity = params[:quantity]
    product.category_id = params[:category_id]
  end
end
