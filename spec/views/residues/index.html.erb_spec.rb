require 'rails_helper'

RSpec.describe "residues/index", type: :view do
  before(:each) do
    assign(:residues, [
      Residue.create!(
        :name => "Name",
        :type => "Type",
        :blend => "Blend",
        :onu => "Onu",
        :code => "Code",
        :laboratory => nil
      ),
      Residue.create!(
        :name => "Name",
        :type => "Type",
        :blend => "Blend",
        :onu => "Onu",
        :code => "Code",
        :laboratory => nil
      )
    ])
  end

  it "renders a list of residues" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    assert_select "tr>td", :text => "Blend".to_s, :count => 2
    assert_select "tr>td", :text => "Onu".to_s, :count => 2
    assert_select "tr>td", :text => "Code".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
