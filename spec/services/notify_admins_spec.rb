require 'rails_helper'

RSpec.describe NotifyAdmins do

  let(:person) {FactoryGirl.build(:person)}

  context 'on notify admin' do

    before(:each) do
      FactoryGirl.create(:person, {role: 0})
    end

    it 'send message' do
      expect{NotifyAdmins.new(person).notify_admins}.to(
        change(Message, :count).by(1)
      )
    end

  end
end
