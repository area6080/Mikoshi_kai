# frozen_string_literal: true

puts "seedよりデータ作成開始"

Admin.find_or_create_by!(email: ENV["ADMIN_EMAIL"]) do |admin|
  admin.password = ENV["ADMIN_PASSWORD"]
end


onihei = User.find_or_create_by!(email: "aaa@aaa") do |user|
  user.name = "長谷川　平蔵"
  user.introduction = "＠鬼平でSNSに登録しています。follow me!"
  user.password = "aaaaaa"
  user.profile_image = ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/onihei.jpg"), filename: "onihei.jpg")
end

fishman = User.find_or_create_by!(email: "zzz@zzz") do |user|
  user.name = "鮪　一番星"
  user.introduction = "豊洲で海鮮料理店を経営しています。東京都江東区豊洲X丁目 TEL:03-0000-0000"
  user.password = "zzzzzz"
  user.profile_image = ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/fish_man.jpg"), filename: "fish_man.jpg")
end

galileo = User.find_or_create_by!(email: "sss@sss") do |user|
  user.name = "ガリレオ"
  user.introduction = "日本の文化が好きで移住しました。もう500年ほど前です。"
  user.password = "ssssss"
  user.profile_image = ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/galileo.jpg"), filename: "galileo.jpg")
end


PostEvent.find_or_create_by!(title: "海上神輿祭") do |post_event|
  post_event.image = ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/torii.jpg"), filename: "torii.jpg")
  post_event.user = onihei
  post_event.caption = "左足が沈む前に右足を出しましょう！"
  post_event.event_date = "2024/08/01"
  post_event.address = "広島県廿日市市宮島町"
end

PostEvent.find_or_create_by!(title: "PTA花火大会") do |post_event|
  post_event.image = ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/hanabi.png"), filename: "hanabi.png")
  post_event.user = onihei
  post_event.caption = "一年間の予算を全て使っています！"
  post_event.event_date = "2024/09/01"
  post_event.address = "北海道幌泉郡えりも町えりも岬"
end

PostEvent.find_or_create_by!(title: "超神田フェステイバル") do |post_event|
  post_event.image = ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/kanda.png"), filename: "kanda.png")
  post_event.user = fishman
  post_event.caption = "長年続いている伝統行事が今年も開催されます。"
  post_event.event_date = "2024/08/01"
  post_event.address = "東京都千代田区外神田２丁目"
end

PostEvent.find_or_create_by!(title: "子供会盆踊り") do |post_event|
  post_event.image = ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/huurin.png"), filename: "huurin.jpg")
  post_event.user = fishman
  post_event.caption = "小学校の校庭で開催いたします。夕方18時より音楽が流れますよ"
  post_event.event_date = "2024/08/17"
  post_event.address = "山形県東根市羽入柏原新林"
end

PostEvent.find_or_create_by!(title: "だんじり祭り") do |post_event|
  post_event.image = ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/danjiri.jpg"), filename: "danjiri.jpg")
  post_event.user = galileo
  post_event.caption = "最高時速は300kmを超えるところが見どころ！四兄弟ならではのチームワークにより圧倒的なスピードを実現しています。"
  post_event.event_date = "2024/09/01"
  post_event.address = "大阪府岸和田市岸城町"
end

PostEvent.find_or_create_by!(title: "琵琶湖恐竜まつり") do |post_event|
  post_event.image = ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/dino.jpg"), filename: "dino.jpg")
  post_event.user = galileo
  post_event.caption = "原寸大の恐竜が琵琶湖に出現"
  post_event.event_date = "2024/11/11"
  post_event.address = "滋賀県彦根市大藪町"
end

PostEvent.find_or_create_by!(title: "戦国武将の宴") do |post_event|
  post_event.image = ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/ieyasu.png"), filename: "ieyasu.png")
  post_event.user = galileo
  post_event.caption = "次回は七夕に開催します！特別ゲストとしてなんと…"
  post_event.event_date = "2025/07/07"
  post_event.address = "富山県富山市森"
end

PostEvent.find_or_create_by!(title: "十日えびす") do |post_event|
  post_event.image = ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/neko.png"), filename: "neko.png")
  post_event.user = galileo
  post_event.caption = "出店がたくさん出て楽しいですよ"
  post_event.event_date = "2025/01/10"
  post_event.address = "福岡県福岡市東区西戸崎"
end

puts "seedの実行完了"
