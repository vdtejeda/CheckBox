require 'rails_helper'

RSpec.describe "professors/index", type: :view do
  before(:each) do
    assign(:professors, [
      Professor.create!(
        :name => "Name"
      ),
      Professor.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of professors" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
