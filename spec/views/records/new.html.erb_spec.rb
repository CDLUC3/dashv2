require 'rails_helper'

RSpec.describe "records/new", type: :view do
  before(:each) do
    assign(:record, Record.new(
      :title => "MyString",
      :data_type => "MyString"
    ))
  end

  it "renders new record form" do
    render

    assert_select "form[action=?][method=?]", records_path, "post" do

      assert_select "input#record_title[name=?]", "record[title]"

      assert_select "input#record_data_type[name=?]", "record[data_type]"
    end
  end
end
