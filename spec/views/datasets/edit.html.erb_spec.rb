require 'rails_helper'

RSpec.describe "datasets/edit", type: :view do
  before(:each) do
    @dataset = assign(:dataset, Dataset.create!(
      :PublicationYear => 1,
      :language => "MyString",
      :size => 1
    ))
  end

  it "renders the edit dataset form" do
    render

    assert_select "form[action=?][method=?]", dataset_path(@dataset), "post" do

      assert_select "input#dataset_PublicationYear[name=?]", "dataset[PublicationYear]"

      assert_select "input#dataset_language[name=?]", "dataset[language]"

      assert_select "input#dataset_size[name=?]", "dataset[size]"
    end
  end
end
