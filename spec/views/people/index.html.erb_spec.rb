require 'rails_helper'

RSpec.describe "people/index", :type => :view do
  before(:each) do
    assign(:people, [
      Person.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :password => "Password",
        :bio => "MyText",
        :email => "Email",
        :phone => "Phone",
        :genre => 1,
        :site => "Site",
        :rg => "Rg",
        :cpf => "Cpf",
        :role => 2
      ),
      Person.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :password => "Password",
        :bio => "MyText",
        :email => "Email",
        :phone => "Phone",
        :genre => 1,
        :site => "Site",
        :rg => "Rg",
        :cpf => "Cpf",
        :role => 2
      )
    ])
  end

  it "renders a list of people" do
    render
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Password".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Site".to_s, :count => 2
    assert_select "tr>td", :text => "Rg".to_s, :count => 2
    assert_select "tr>td", :text => "Cpf".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
