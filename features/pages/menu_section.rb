class MenuSection < SitePrism::Section
  	
  element :discipline_menu, "a#menu_discipline_defaultDisciplinaryView" 
  element :view_disciplines, "a#menu_discipline_viewDisciplinaryCases"

  def click_back_discipline
    view_disciplines.click
  end
end