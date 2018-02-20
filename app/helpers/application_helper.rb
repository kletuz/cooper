module ApplicationHelper

  #Obtendremos el título completo con base a cada página
  def full_title(page_title = '')
    base_title = "COOPER"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end    
  end
end
