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

      sleep 10
    end

  end
end