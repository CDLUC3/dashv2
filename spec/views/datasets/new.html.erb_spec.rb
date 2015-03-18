require 'rails_helper'

RSpec.describe "datasets/new", type: :view do
  before(:each) do
    assign(:dataset, Dataset.new(
      :PublicationYear => 1,
      :language => "MyString",
      :size => 1
    ))
  end

  it "renders new dataset form" do
    render

    assert_select "form[action=?][method=?]", datasets_path, "post" do

      assert_select "input#dataset_PublicationYear[name=?]", "dataset[PublicationYear]"

      assert_select "input#dataset_language[name=?]", "dataset[language]"

      assert_select "input#dataset_size[name=?]", "dataset[size]"
    end
  end
end
