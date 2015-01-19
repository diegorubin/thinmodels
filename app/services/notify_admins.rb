class NotifyAdmins

  def initialize(person)
    @person = person
  end

  def notify_admins
    admins = Person.where(role: 0)
    admins.each do |admin|
      Message.create({
        about: 'Nova pessoa',
        body: "Diga olá para #{@person.first_name}.",
        person: admin
      })
    end
  end
  
end
