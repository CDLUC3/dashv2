require 'rails_helper'

RSpec.describe "datasets/index", type: :view do
  before(:each) do
    assign(:datasets, [
      Dataset.create!(
        :PublicationYear => 1,
        :language => "Language",
        :size => 2
      ),
      Dataset.create!(
        :PublicationYear => 1,
        :language => "Language",
        :size => 2
      )
    ])
  end

  it "renders a list of datasets" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Language".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
