require 'rails_helper'

RSpec.describe "records/edit", type: :view do
  before(:each) do
    @record = assign(:record, Record.create!(
      :title => "MyString",
      :data_type => "MyString"
    ))
  end

  it "renders the edit record form" do
    render

    assert_select "form[action=?][method=?]", record_path(@record), "post" do

      assert_select "input#record_title[name=?]", "record[title]"

      assert_select "input#record_data_type[name=?]", "record[data_type]"
    end
  end
end
