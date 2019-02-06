require 'capybara/dsl'

class Registration

  include Capybara::DSL 

  # page objects
  SPARTA_REG_URL = 'http://localhost:9292/'
  FIRST_NAME_FIELD_ID = 'firstName'
  LAST_NAME_FIELD_ID = 'lastName'

  def visit_registration_page
    visit(SPARTA_REG_URL)
  end

  def fill_in_firstname_field(name)
    fill_in(FIRST_NAME_FIELD_ID, :with => name)
  end

  def fill_in_lastname_field(name)
    fill_in(LAST_NAME_FIELD_ID, :with => name)
  end

end
