require "rails_helper"

RSpec.describe Person, type: :model do
  describe "relationships" do
    it { should have_many :hikes }
  end
end