Fabricator(:user) do
  email { Faker::Internet.email }
  secret = "Avalidp4ssw0rD"
  password secret
  password_confirmation secret
end
