require 'rails_helper'

RSpec.describe "Vehicles", type: :request do
  describe "GET /vehicles" do
    it "works! (now write some real specs)" do
      Vehicle.create!(:name => "Toyota", model: "2012")
      visit vehicles_path
      page.should have_content "Toyota"
    end
  end
end
