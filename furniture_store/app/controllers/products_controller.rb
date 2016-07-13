class ProductsController < ApplicationController
  def index
    render template: 'products/index.html.erb', locals: { products: Product.all }
  end

  def index_automotive
    products = []
    Product.all.each do |product|
      if product.category.category_name == 'Automotive'
        products << product
      end
    end
    render template: 'products/category_index.html.erb', locals: { products: products }
  end

  def index_electronics
    products = []
    Product.all.each do |product|
      if product.category.category_name == 'Electronics'
        products << product
      end
    end
    render template: 'products/category_index.html.erb', locals: { products: products }
  end

  def index_industrial
    products = []
    Product.all.each do |product|
      if product.category.category_name == 'Industrial'
        products << product
      end
    end
    render template: 'products/category_index.html.erb', locals: { products: products }
  end

  def index_tools
    products = []
    Product.all.each do |product|
      if product.category.category_name == 'Tools'
        products << product
      end
    end
    render template: 'products/category_index.html.erb', locals: { products: products }
  end

  def index_music
    products = []
    Product.all.each do |product|
      if product.category.category_name == 'Music'
        products << product
      end
    end
    render template: 'products/category_index.html.erb', locals: { products: products }
  end

  def show
    if Product.exists?(params[:id])
      render template: 'products/show.html.erb', locals: { product: Product.find(params[:id]) }
    else
      render html: 'Product not found', status: 404
    end
  end
end
