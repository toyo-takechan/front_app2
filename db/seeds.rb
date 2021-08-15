# メインのサンプルユーザーを1人作成する
User.create!(name:  "OkayToyoji",
             email: "okaytoyoji@co.jp",
             password:              "foobar",
             password_confirmation: "foobar",
             admin:     true,
             activated: true,
             activated_at: Time.zone.now)

# ログイン用テストユーザーを1人作成する
User.create!(name:  "testtest",
             email: "test@co.jp",
             password:              "testtest",
             password_confirmation: "testtest",
             activated: true,
             activated_at: Time.zone.now)

# 追加のユーザーをまとめて生成する

3.times do |n|
  name  = Faker::JapaneseMedia::StudioGhibli.character
  email = Faker::Internet.unique.email 
  password = "password"
  User.create!(name:  name,
               email: email,
               password: password,
               password_confirmation: password,
               activated: true,
               activated_at: Time.zone.now)
end

# ユーザーの一部を対象にマイクロポストを生成する
users = User.order(:created_at).take(3)
4.times do
  content = Faker::Lorem.sentence(word_count: 5)
  users.each { |user| user.microposts.create!(content: content) } 
end

# 以下のリレーションシップを作成する
users = User.all
user  = users.first
following = users[2..5]
followers = users[3..6]
following.each { |followed| user.follow(followed)}
followers.each { |follower| follower.follow(user)}



