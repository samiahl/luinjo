Fabricator(:user) do
  username { Faker::Internet.user_name.truncate 16 }
  email { Faker::Internet.email }
  secret = "Avalidp4ssw0rD"
  password secret
  password_confirmation secret
end
