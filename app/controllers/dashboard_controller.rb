class DashboardController < ApplicationController
  def index
    render template: 'dashboard/index.html.erb', locals: { categories: Category.all }
  end
end
