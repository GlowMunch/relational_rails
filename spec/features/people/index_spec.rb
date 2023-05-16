require "rails_helper"

RSpec.describe "/people(people index page) User Story 1, Person Index", type: :feature do
  describe "As a visitor when I visit '/people'" do
    it "see the name of each person record in the system" do
      doug = Person.create!(name: "Doug", age: 30, level: 3, scramble: true, max_distance_mi: 10, max_elevation_ft: 1000)
      
      visit "/people" 
      # save_and_open_page

      expect(page).to have_content(doug.name)
    end
  end

  describe "As a visitor when I visit '/people/:id'" do
    it "see the parent with that id including the parent's attributes
    (data from each column that is on the parent table)" do
      doug = Person.create!(name: "Doug", age: 30, level: 3, scramble: true, max_distance_mi: 10, max_elevation_ft: 1000)
      
      visit "/people/#{doug.id}" 
      save_and_open_page

      expect(page).to have_content(doug.name)
    end
  end

  describe "visiting child_table_name" do
    describe "see each Child in the system including the Child's attributes"do
      doug = Person.create!(name: "Doug", age: 30, level: 3, scramble: true, max_distance_mi: 10, max_elevation_ft: 1000)
        
      visit "/people/#{doug.id}" 
      save_and_open_page

      expect(page).to have_content(doug.name)
    end
  end
end