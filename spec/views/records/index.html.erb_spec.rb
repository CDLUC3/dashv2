require 'rails_helper'

RSpec.describe "records/index", type: :view do
  before(:each) do
    assign(:records, [
      Record.create!(
        :title => "Title",
        :data_type => "Data Type"
      ),
      Record.create!(
        :title => "Title",
        :data_type => "Data Type"
      )
    ])
  end

  it "renders a list of records" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Data Type".to_s, :count => 2
  end
end
