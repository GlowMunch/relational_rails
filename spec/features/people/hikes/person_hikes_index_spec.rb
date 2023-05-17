# As a visitor
# When I visit '/parents/:parent_id/child_table_name'
# Then I see each Child that is associated with that 
# Parent with each Child's attributes

# (data from each column that is on the child table)

require "rails_helper"

RSpec.describe "persons hikes index", type: :feature do
  before :each do
    @doug = Person.create!(name: "Doug", age: 30, level: 3, scramble: true, max_distance_mi: 10, max_elevation_ft: 1000)
    @sunrise = @doug.hikes.create!(name: "sunrise", scramble: true, level: 1, state: "WA", length: 10, elevation_gain_ft: 1000)
    @snow_pass = @doug.hikes.create!(name: "snow pass", scramble: false, level: 3, state: "CO", length: 23, elevation_gain_ft: 1300)
    @green_hill = @doug.hikes.create!(name: "green hill", scramble: true, level: 5, state: "CA", length: 19, elevation_gain_ft: 2300)
  end

  describe "when I visit '/people/person_id/hikes'" do
    it "see the name of each hike associated with that person and hike attributes" do
    
      visit "/people/#{@doug.id}/hikes"
      save_and_open_page

      expect(page).to have_content(@sunrise.name)
    end
  end
end