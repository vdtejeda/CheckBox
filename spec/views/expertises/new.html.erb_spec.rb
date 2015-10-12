require 'rails_helper'

RSpec.describe "expertises/new", type: :view do
  before(:each) do
    assign(:expertise, Expertise.new(
      :name => "MyString"
    ))
  end

  it "renders new expertise form" do
    render

    assert_select "form[action=?][method=?]", expertises_path, "post" do

      assert_select "input#expertise_name[name=?]", "expertise[name]"
    end
  end
end
