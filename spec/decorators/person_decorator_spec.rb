require 'rails_helper'

RSpec.describe PersonDecorator do

  let(:person) { FactoryGirl.build(:person) }
  let(:decorator) { PersonDecorator.new(person) }

  context 'on formatters' do

    it 'get complete name' do
      expect(decorator.complete_name).to(
        eql("#{person.first_name} #{person.last_name}")
      )
    end

    it 'get birthday as string' do
      expect(decorator.birthday_str).to(
        eql(I18n.l(person.birthday, format: :short))
      )
    end

  end
end
