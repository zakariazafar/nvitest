# execute this seed by the following command
# rake db:seed:users

(1..5).each do |n|
  User.create(
  	email: "admin#{n}@test.com",
  	password: "password",
  	password_confirmation: "password"
  )
end                   
