require 'rails_helper'

RSpec.describe "Vehicles", type: :request do
  describe "GET /vehicles" do
    it "works! (now write some real specs)" do
      Vehicle.create!(:name => "Toyota", model: "2012")
      visit vehicles_path
      page.should have_content "Toyota"
    end
  end

  describe "POST/vehicles" do
    it "create vehicle" do
      visit vehicles_path
      click_link "New Vehicle"
      fill_in "vehicle_name", :with => "Honda"
      fill_in "vehicle_model", :with => "Accord"
      click_button "Create Vehicle"
      page.should have_content ("Honda")
    end
  end

  describe "PUT/vehicles" do
   vehicle = Vehicle.create!(:name => "BMW", model: "2012")
    it "updates vehicle " do
      visit vehicles_path
      visit edit_vehicle_path(vehicle)
      fill_in "vehicle_model", :with => "2015"
      click_button "Update Vehicle"
      page.should have_content ("2015")
    end
  end

  describe "DELETE/vehicles" do
  vehicle = Vehicle.create!(:name => "Benz", model: "2010")
  it "deletes the  vehicle " do
    page.driver.submit :delete, "/vehicles/#{vehicle.id}", {}
    save_and_open_page
  end
  end
  end
