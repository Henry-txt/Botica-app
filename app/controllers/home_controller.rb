class HomeController < ApplicationController
  def index
    @products = if params[:query].present?
      Product.where("name LIKE ?", "%#{params[:query]}%")
    else
      Product.all
    end
  end
end
