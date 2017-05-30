require 'rails_helper'

RSpec.describe "residues/edit", type: :view do
  before(:each) do
    @residue = assign(:residue, Residue.create!(
      :name => "MyString",
      :type => "",
      :blend => "MyString",
      :onu => "MyString",
      :code => "MyString",
      :laboratory => nil
    ))
  end

  it "renders the edit residue form" do
    render

    assert_select "form[action=?][method=?]", residue_path(@residue), "post" do

      assert_select "input#residue_name[name=?]", "residue[name]"

      assert_select "input#residue_type[name=?]", "residue[type]"

      assert_select "input#residue_blend[name=?]", "residue[blend]"

      assert_select "input#residue_onu[name=?]", "residue[onu]"

      assert_select "input#residue_code[name=?]", "residue[code]"

      assert_select "input#residue_laboratory_id[name=?]", "residue[laboratory_id]"
    end
  end
end
