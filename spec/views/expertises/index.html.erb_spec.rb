require 'rails_helper'

RSpec.describe "expertises/index", type: :view do
  before(:each) do
    assign(:expertises, [
      Expertise.create!(
        :name => "Name"
      ),
      Expertise.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of expertises" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
