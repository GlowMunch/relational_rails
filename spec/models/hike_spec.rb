require "rails_helper"

RSpec.describe Hike, type: :model do
   describe "relationships" do
      it { should belong_to :person }
   end
end
