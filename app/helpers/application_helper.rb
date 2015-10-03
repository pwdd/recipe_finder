module ApplicationHelper
  def shorten_name(string)
    if string.length > 25
      "#{string[0...20]}..." 
    else
      string
    end
  end
end
