require 'rails_helper'

RSpec.describe "vehicles/index", type: :view do
  before(:each) do
    assign(:vehicles, [
      Vehicle.create!(
        :name => "Name",
        :model => "Model"
      ),
      Vehicle.create!(
        :name => "Name",
        :model => "Model"
      )
    ])
  end

  it "renders a list of vehicles" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Model".to_s, :count => 2
  end
end
