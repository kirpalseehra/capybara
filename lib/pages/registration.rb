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
  ADDRESS_FIELD_ID = 'inputAddress'
  ADDRESS_TWO_FIELD_ID = 'inputAddress2'
  CITY_FIELD_ID = 'inputCity'
  UNIVERSITY_DROPDOWN_ID = 'inputUni'
  COUNTY_DROPDOWN_ID = 'inputCounty'
  POSTCODE_FIELD_ID = 'inputPostcode'
  EMAIL_FIELD_ID = 'inputemailaddress'
  SKILLS_FIELD_ID = 'exampleFormControlTextarea1'
  PHONE_FIELD_ID = 'exampleFormControlInput1'
  LINKED_URL_FIELD_XPATH = '/html/body/div/form/div[17]/div/input'
  UPLOAD_CV_FIELD_XPATH = '/html/body/div/form/div[18]/div/input'
  STREAM_RADIO_XPATH = '/html/body/div/form/div[20]/div[2]/label'
  TERMS_CHECKBOX_ID = 'terms'
  SLIDER_CLASS = 'slider'
  SIGN_IN_BUTTON_XPATH = '/html/body/div/form/button'


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

  def fill_in_address_field(add)
    fill_in(ADDRESS_FIELD_ID, :with => add)
  end

  def fill_in_address_two_field(add2)
    fill_in(ADDRESS_TWO_FIELD_ID, :with => add2)
  end

  def fill_in_city_field(city)
    fill_in(CITY_FIELD_ID, :with => city)
  end

  def select_university_dropdown
    select('University of Oxford', :from => UNIVERSITY_DROPDOWN_ID)
  end

  def select_county_dropdown
    select('Bristol', :from => COUNTY_DROPDOWN_ID)
  end

  def fill_in_postcode_field(postcode)
    fill_in(POSTCODE_FIELD_ID, :with => postcode)
  end

  def fill_in_email_field(email)
    fill_in(EMAIL_FIELD_ID, :with => email)
  end

  def fill_in_skills_field(skills)
    fill_in(SKILLS_FIELD_ID, :with => skills)
  end

  def fill_in_phone_field(phone)
    fill_in(PHONE_FIELD_ID, :with => phone)
  end

  def fill_in_linked_url_field(linked)
    find(:xpath, LINKED_URL_FIELD_XPATH).set(linked)
  end

  def upload_cv
    find(:xpath, UPLOAD_CV_FIELD_XPATH).click
  end

  def click_stream_button
    find(:xpath, STREAM_RADIO_XPATH).click
  end

  def terms_checkbox 
    check(TERMS_CHECKBOX_ID)
  end

  # def slider(slide)
  #   find(SLIDER_CLASS).drag_to(slide)
  # end

  def click_sign_in_button
    find(:xpath, SIGN_IN_BUTTON_XPATH).click
  end
end