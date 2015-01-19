require 'rails_helper'

RSpec.describe Person, :type => :model do

  let(:person) {FactoryGirl.build(:person)}

  context 'on validate' do

    after(:each) do
      expect(person).to be_invalid
    end

    it('presence of first_name') { person.first_name = '' }
    it('presence of last_name') { person.last_name = '' }

    it('format of email') do 
      person.email = 'email invalido'
    end


  end

  xcontext 'on formatters' do

    it 'get complete name' do
      expect(person.complete_name).to(
        eql("#{person.first_name} #{person.last_name}")
      )
    end

    it 'get birthday as string' do
      expect(person.birthday_str).to(
        eql(I18n.t(person.birthday, :short))
      )
    end

  end

end
