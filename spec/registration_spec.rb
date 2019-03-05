require_relative 'spec_helper'

describe 'Testing a correct path for sparta registration' do

  context 'It should respond with confirmation on successful completion' do

    it 'should show correct confirmation of completion' do
      @sparta_demosite = SpartaDemoSite.new.registration_page
      @sparta_demosite.visit_registration_page
      @sparta_demosite.fill_in_firstname_field('Kirpal')
      @sparta_demosite.fill_in_lastname_field('Seehra')
      @sparta_demosite.fill_in_date_field('07/02/2019')
      @sparta_demosite.click_gender_button
      @sparta_demosite.select_age_field('25')
      @sparta_demosite.fill_in_degree_field('Computer Science')
      @sparta_demosite.fill_in_address_field('Sparta')
      @sparta_demosite.fill_in_address_two_field('Global')
      @sparta_demosite.fill_in_city_field('Seven Kings')
      @sparta_demosite.select_university_dropdown
      @sparta_demosite.select_county_dropdown
      @sparta_demosite.fill_in_postcode_field('IG3 9JG')
      @sparta_demosite.fill_in_email_field('example-one@hotmail.com')
      @sparta_demosite.fill_in_skills_field('Skills include: HTML, CSS, JavaScript, SQL, Ruby')
      @sparta_demosite.fill_in_phone_field('079me')
      @sparta_demosite.fill_in_linked_url_field('http://www.linkedin.com')
      @sparta_demosite.upload_cv
      @sparta_demosite.click_stream_button
      @sparta_demosite.terms_checkbox
      # @sparta_demosite.slider(81)
      @sparta_demosite.click_sign_in_button
      sleep 5
    end
  end
end
