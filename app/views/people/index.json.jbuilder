json.array!(@people) do |person|
  json.extract! person, :id, :first_name, :last_name, :password, :bio, :email, :phone, :genre, :site, :birthday, :rg, :cpf, :role
  json.url person_url(person, format: :json)
end
