module RecipesHelper
  def filter_heading(search_term)
    day = Date.today.strftime("%A")
    
    if @search_term == ""
      "#{day} is a great day for "
    else
      "You searched for #{search_term}."
    end
  end

  def filter_string(ranking)
    ranking = ranking.round(1)
  end
end
