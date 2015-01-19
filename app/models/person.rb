class Person < ActiveRecord::Base

  after_create :notify_admins
  
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, format: { with: Regexp::EMAIL }

  private
  def notify_admins

  end

end
