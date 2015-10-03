class RecipesController < ApplicationController
  def index
    @search_term = params[:search] || ''
    @search_page = params[:page] || ''
    @recipes = Recipe.for(@search_term, @search_page)
  end
end