10.times do |_n|
  User.create(username: "u_#{_n}", password: '123456', sex: 0)
end
