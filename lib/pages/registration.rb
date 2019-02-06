require 'capybara/dsl'

class Registration

  include Capybara::DSL 

  # page objects
  SPARTA_REG_URL = 'http://localhost:9292/'
  FIRST_NAME_FIELD_ID = 'firstName'
  LAST_NAME_FIELD_ID = 'lastName'
  AGE_FIELD_XPATH = '/html/body/div/form/div[3]/div/input'
  DATE_FIELD_NAME = 'dob'
  GENDER_RADIO_XPATH = '/html/body/div/form/div[5]/label'
  DEGREE_FIELD_XPATH = '/html/body/div/form/div[7]/div/input'
  

  def visit_registration_page
    visit(SPARTA_REG_URL)
  end

  def fill_in_firstname_field(name)
    fill_in(FIRST_NAME_FIELD_ID, :with => name)
  end

  def fill_in_lastname_field(name)
    fill_in(LAST_NAME_FIELD_ID, :with => name)
  end

  def select_age_field(age)
    find(:xpath, AGE_FIELD_XPATH).set(age)
  end

  def fill_in_date_field(date)
    fill_in(DATE_FIELD_NAME, :with => date)
  end

  def click_gender_button
    find(:xpath, GENDER_RADIO_XPATH).click
  end

  def fill_in_degree_field(degree)
    find(:xpath, DEGREE_FIELD_XPATH).set(degree)
  end

end