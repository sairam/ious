class HomeController < ApplicationController
  def show
    flash[:notice] = "Welcome to the home page"
  end
  def help; end
end