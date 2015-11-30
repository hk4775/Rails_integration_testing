require 'rails_helper'

RSpec.describe "vehicles/new", type: :view do
  before(:each) do
    assign(:vehicle, Vehicle.new(
      :name => "MyString",
      :model => "MyString"
    ))
  end

  it "renders new vehicle form" do
    render

    assert_select "form[action=?][method=?]", vehicles_path, "post" do

      assert_select "input#vehicle_name[name=?]", "vehicle[name]"

      assert_select "input#vehicle_model[name=?]", "vehicle[model]"
    end
  end
end
