module MoviesHelper
  # Checks if a number is odd:
  def oddness(count)
    count.odd? ?  "odd" :  "even"
  end
  def sortable(column, title = nil, html_id = nil)
	title ||=column.titleize
	direction = column == sort_column && sort_direction == "asc" ? "desc" : "asc"
	link_to title, :sort => column, :direction => direction
  end
end
