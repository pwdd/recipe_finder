class RecipesController < ApplicationController
  def index
    @search_term = params[:search] || ''
    @search_sort = params[:sort] || ''
    @search_page = params[:page] || 1
    @recipes = Recipe.for(@search_term, @search_sort, @search_page)
  end
end