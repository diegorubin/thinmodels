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

  xcontext 'on notify admin' do

    before(:each) do
      FactoryGirl.create(:person, {role: 0})
    end

    it 'send message' do
      expect{person.save}.to change(Message, :count).by(1)
    end

  end

end
