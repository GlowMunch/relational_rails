require "rails_helper"

RSpec.describe "child/hikes", type: :feature do
  before :each do
    @doug = Person.create!(name: "Doug", age: 30, level: 3, scramble: true, max_distance_mi: 10, max_elevation_ft: 1000)
    @sunrise = @doug.hikes.create!(name: "sunrise", scramble: true, level: 1, state: "WA", length: 10, elevation_gain_ft: 1000)
    @snow_pass = @doug.hikes.create!(name: "snow pass", scramble: false, level: 3, state: "CO", length: 23, elevation_gain_ft: 1300)
    @green_hill = @doug.hikes.create!(name: "green hill", scramble: true, level: 5, state: "CA", length: 19, elevation_gain_ft: 2300)
  end

  it "shows all hikess and attributes when visiting hikes page" do
    visit "/hikes" 
    save_and_open_page

    expect(page).to have_content(@sunrise.name)
  end
end
