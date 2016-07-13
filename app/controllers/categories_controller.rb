class CategoriesController < ApplicationController
  def index
    render template: "categories/index.html.erb", locals: { categories: Category.all }
  end

  def show
    if Category.exists?(params[:id])
      render template: "categories/show.html.erb", locals: { category: Category.find(params[:id]) }
    else
      render html: 'Category not found', status: 404
    end
  end
end
