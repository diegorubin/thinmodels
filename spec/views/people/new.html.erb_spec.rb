require 'rails_helper'

RSpec.describe "people/new", :type => :view do
  before(:each) do
    assign(:person, Person.new(
      :first_name => "MyString",
      :last_name => "MyString",
      :password => "MyString",
      :bio => "MyText",
      :email => "MyString",
      :phone => "MyString",
      :genre => 1,
      :site => "MyString",
      :rg => "MyString",
      :cpf => "MyString",
      :role => 1
    ))
  end

  it "renders new person form" do
    render

    assert_select "form[action=?][method=?]", people_path, "post" do

      assert_select "input#person_first_name[name=?]", "person[first_name]"

      assert_select "input#person_last_name[name=?]", "person[last_name]"

      assert_select "input#person_password[name=?]", "person[password]"

      assert_select "textarea#person_bio[name=?]", "person[bio]"

      assert_select "input#person_email[name=?]", "person[email]"

      assert_select "input#person_phone[name=?]", "person[phone]"

      assert_select "input#person_genre[name=?]", "person[genre]"

      assert_select "input#person_site[name=?]", "person[site]"

      assert_select "input#person_rg[name=?]", "person[rg]"

      assert_select "input#person_cpf[name=?]", "person[cpf]"

      assert_select "input#person_role[name=?]", "person[role]"
    end
  end
end
