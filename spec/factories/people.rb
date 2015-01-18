FactoryGirl.define do
  factory :person do
    first_name Faker::Name.first_name
    last_name Faker::Name.last_name
    password 'password'
    bio Faker::Lorem.paragraph(1)
    email Faker::Internet.email
    phone Faker::PhoneNumber.cell_phone
    genre 1
    site Faker::Internet.url
    birthday "2015-01-17"
    rg "MyString"
    cpf "MyString"
    role 1
  end

end
