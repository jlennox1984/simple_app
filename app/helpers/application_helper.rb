module ApplicationHelper

  #Return full title on a page per page basis
  def full_title(page_title)
    base_title = 'Ruby on rails Tutorals  Sample App'
    if page_title.empty?
      base_title
    else
     "#{base_title} | #{page_title}"
    end
  end
end
