require 'rails_helper'

RSpec.describe SimplePeopleForm do

  context 'on create' do
    let(:form) do 
      email = Faker::Internet.email
      person = {
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        email: email,
        email_confirmation: email
      }
      SimplePeopleForm.new(person)
    end

    after(:each) do
      expect(form).to be_invalid
    end

    it('presence of first_name') { form.first_name = '' }
    it('presence of last_name') { form.last_name = '' }

    it('confirmation of email') do 
      form.email_confirmation = Faker::Internet.email 
    end
  end

end
