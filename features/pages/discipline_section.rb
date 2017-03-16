class DisciplineSection < SitePrism::Section

  element :menu_discipline, "li#menu_discipline_defaultDisciplinaryView a"
  element :add_discipline_button, "#btnAdd" 
  element :text_field_employee_name, "input#addCase_employeeName_empName"
  element :text_field_case_name, "input#addCase_caseName"
  element :text_field_description, "textarea#addCase_description"
  element :submit_form, "input#btnSave"
      
  def add_new_note
    menu_discipline.click
    add_discipline_button.click
  end

  #add discipline
  def fill_new_note(_employee_name, _case_name, _description)
    self.text_field_employee_name.set _employee_name
    self.text_field_case_name.set _case_name
    self.text_field_description.set _description
  end

  def save_note
    submit_form.click
  end

  def check_content(content)
    expect(page).to have_content(content)
  end           
end