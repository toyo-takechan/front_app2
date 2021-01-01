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

20.times do |n|
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



