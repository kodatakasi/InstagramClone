50.times do |n|
  name = Faker::JapaneseMedia::DragonBall.character 
  email = Faker::Internet.email
  password = "password"
  profile = Faker::Lorem.word
  profile_image = open("/Users/kodatakasi/workspace/rails/InstagramClone/public/assets/blank-profile-picture-973460_640.png")
  User.create!(name: name,
               email: email,
               password: password,
               password_confirmation: password,
               profile: profile,
               profile_image: profile_image,
               )
end