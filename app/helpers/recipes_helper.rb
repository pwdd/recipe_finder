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

  def pagination_next
    number_next = @search_page.to_i + 1
    number_next.to_s
  end

  def pagination_prev
    number_prev = @search_page.to_i - 1
    number_prev.to_s
  end
end
