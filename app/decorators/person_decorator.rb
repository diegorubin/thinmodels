class PersonDecorator < SimpleDelegator

  def complete_name
    [first_name, last_name].join(' ')
  end

  def birthday_str
    I18n.l(birthday, format: :short)
  end

end
