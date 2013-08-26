def full_title(page_title)
  base_title = "Ruby on Rails Tutorial Sample App"
  if page_title.empty?
	    base_title
  else
    "#{base_title} | #{page_title}"
  end
end
def page_title(page)
  page.html.match(/<title>(.*)<\/title>/)[1].to_s
end
def page_h1(page)
 page.html.match(/<h1>(.*)<\/h1>/)[1].to_
end
