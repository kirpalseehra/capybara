require_relative 'spec_helper'

describe 'Testing a correct path for sparta registration' do

  context 'It should respond with confirmation on successful completion' do

    it 'should show correct confirmation of completion' do
      @sparta_demosite = SpartaDemoSite.new.registration_page
      @sparta_demosite.visit_registration_page
      @sparta_demosite.fill_in_firstname_field('Kirpal')
      @sparta_demosite.fill_in_lastname_field('Seehra')

      sleep 10
    end

  end
end