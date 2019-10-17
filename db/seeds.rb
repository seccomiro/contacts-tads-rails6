def create_user email = nil, password = nil
  password = password || Faker::Crypto.md5
  user = User.create! email: email || Faker::Internet.email, password: password, password_confirmation: password
  5.times do
    user.contacts << Contact.all.sample
  end
end

5.times do
  Kind.create! description: Faker::Company.unique.industry
end

10.times do
  company = Company.create! name: Faker::Company.unique.name, active: Faker::Boolean.boolean
  10.times do
    contact = company.contacts.create! name: Faker::Movies::StarWars.character, email: Faker::Internet.email, remark: Faker::Company.catch_phrase, kind: Kind.all.sample

    contact.create_address! city: Faker::Address.city, street: Faker::Address.street_name, state: Faker::Address.state
    
    3.times do
      contact.phones.create! number: Faker::PhoneNumber.cell_phone
    end
  end
end

20.times do
  create_user
end
create_user 'test@test.com', '123123'