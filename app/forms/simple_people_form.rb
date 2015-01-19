class SimplePeopleForm
  include Virtus
  include ActiveModel::Model

  attribute :first_name, String
  attribute :last_name, String
  attribute :email, String
  attribute :password, String

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, confirmation: true, presence: true, 
    format: { with: Regexp::EMAIL }
  validates :password, confirmation: true, presence: true

  def save
    if valid?
      persist!
      true
    else
      false
    end
  end

  def person
    @person
  end

  private

  def persist!
    @person = Person.create(attributes)
  end
end
