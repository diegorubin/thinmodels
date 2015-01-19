require 'rails_helper'

RSpec.describe Person, :type => :model do

  context 'on validate' do

    let(:person) {FactoryGirl.build(:person)}

    after(:each) do
      expect(person).to be_invalid
    end

    it('presence of first_name') { person.first_name = '' }
    it('presence of last_name') { person.last_name = '' }

    it('format of email') do 
      person.email = 'email invalido'
    end


  end

end
