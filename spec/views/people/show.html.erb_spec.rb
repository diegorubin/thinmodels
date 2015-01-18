require 'rails_helper'

RSpec.describe "people/show", :type => :view do
  before(:each) do
    @person = assign(:person, Person.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Password/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Phone/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Site/)
    expect(rendered).to match(/Rg/)
    expect(rendered).to match(/Cpf/)
    expect(rendered).to match(/2/)
  end
end
