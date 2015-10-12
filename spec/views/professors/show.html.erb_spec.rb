require 'rails_helper'

RSpec.describe "professors/show", type: :view do
  before(:each) do
    @professor = assign(:professor, Professor.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
