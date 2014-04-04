Fabricator(:information_cone) do
  title { camelcase(Faker::Company.catch_phrase).truncate 32 }
  description { Faker::Lorem.paragraph }
end

def camelcase(str)
  str.downcase.split.each_with_index.map { |v,i|  i == 0 ? v : v.capitalize }.join  
end
