# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#ユーザー登録
user1 = User.create!(
  name: "いったパパ",
  email: "test@test.com",
  password: "password",
  admin: true,
  image: File.open("app/assets/images/0D09D836-BEE2-4C40-8248-425F74878265_1_105_c.jpeg"),
)

user2 = User.create!(
  name: "たくとママ",
  email: "test2@test.com",
  password: "password",
  image: File.open("app/assets/images/11B616B9-70D7-4138-AA60-10C71337033F_1_105_c.jpeg"),
)

user3 = User.create!(
  name: "おさるキャッキャッキャ",
  email: "test3@test.com",
  password: "password",
  image: File.open("app/assets/images/82DF13E1-DCB4-4892-A7A4-B581239D6BE2_1_105_c.jpeg"),
)
user4 = User.create!(
  name: "やまとパパ",
  email: "test4@test.com",
  password: "password",
  image: File.open("app/assets/images/98A709C8-A59A-4686-A2CD-A41DCF9BFF74_1_105_c.jpeg"),
)
user5 = User.create!(
  name: "こうきママ",
  email: "test5@test.com",
  password: "password",
  image: File.open("app/assets/images/5408DC10-1501-4DE7-8440-F75B4E6D76B6_1_105_c.jpeg"),
)


#日記投稿
post1_1 = Post.create!(
  title: "今日も元気",
  content: "Tシャツが脱げない。。",
  image: File.open("app/assets/images/0BB93056-F470-425A-8963-FF7BFE808E12_1_105_c.jpeg"),
  user_id: user1.id,
)
post1_2 = Post.create!(
  title: "ちびっ子ギャング",
  content: "二人は従兄妹で仲良しさん！！",
  image: File.open("app/assets/images/8D539EDB-D146-4D34-A76C-86985B97C8B9_1_105_c.jpeg"),
  user_id: user1.id,
)

post2_1 = Post.create!(
  title: "歯磨き上手！",
  content: "一人で磨けるもん！！！",
  image: File.open("app/assets/images/9311B770-1891-425F-80F9-A7B4C35C400F_1_105_c.jpeg"),
  user_id: user2.id,
)
post2_2 = Post.create!(
  title: "お祭りにて",
  content: "かき氷で舌が真っ青♪",
  image: File.open("app/assets/images/833854F9-0AB1-4329-A240-026B67909F2A_1_105_c.jpeg"),
  user_id: user2.id,
)

post3_1 = Post.create!(
  title: "壱太とはるの",
  content: "大の仲良し",
  image: File.open("app/assets/images/A4EFE6F3-AD28-4C73-BFC0-CBF41BA31700_1_105_c.jpeg"),
  user_id: user3.id,
)
post3_2 = Post.create!(
  title: "大人になった気分",
  content: "眼鏡ズレてますけど！！！",
  image: File.open("app/assets/images/B1A853C4-0419-42E8-8F81-BAA4C3A7B335_1_105_c.jpeg"),
  user_id: user3.id,
)
post4_1 = Post.create!(
  title: "今日はハロウィン",
  content: "今年は恐竜の格好にしました✨",
  image: File.open("app/assets/images/B00173EB-CC44-4BB1-9239-A48614CE0A05_1_105_c.jpeg"),
  user_id: user4.id,
)
post4_2 = Post.create!(
  title: "今日は父の日",
  content: "顔面ドアップで登場！",
  image: File.open("app/assets/images/C58E2237-6550-4C7E-B6C7-F30D13EAA5FA_1_105_c.jpeg"),
  user_id: user4.id,
)
post5_1 = Post.create!(
  title: "いいんです、いいんです",
  content: "お店でカツラ発見！早速かぶってみます。",
  image: File.open("app/assets/images/E451C940-46EC-4B2B-8E3A-82B3277DA617_1_105_c.jpeg"),
  user_id: user5.id,
)
post5_2 = Post.create!(
  title: "キャンプにて",
  content: "かぼちゃに乗ったよ🎃",
  image: File.open("app/assets/images/EEF0124B-9AC4-4805-87CF-4CB28EB2DF23_1_105_c.jpeg"),
  user_id: user5.id,
)

#生徒登録
student1 = Student.create!(
  student_name: "いった",
  category: 0,
  school_year: 0,
  user_id: user1.id,
)
student2 = Student.create!(
  student_name: "たくと",
  category: 1,
  school_year: 1,
  user_id: user2.id,
)
student3 = Student.create!(
  student_name: "ゆうと",
  category: 1,
  school_year: 2,
  user_id: user3.id,
)
student4 = Student.create!(
  student_name: "やまと",
  category: 2,
  school_year: 3,
  user_id: user4.id,
)
student5 = Student.create!(
  student_name: "こうき",
  category: 3,
  school_year: 6,
  user_id: user4.id,
)


#健康管理情報
record1_1 = Record.create!(
  record_at: "2021-07-07",
  body_temperature: 36.2,
  is_cough: "なし",
  is_sneeze: "しない",
  is_runny_nose: "出ない",
  is_dull: "だるくない",
  is_family_illness: "いない",
  attendance: 1,
  student_id: Student.find_by(student_name: "いった").id
)
record1_2 = Record.create!(
  record_at: "2021-07-14",
  body_temperature: 36.5,
  is_cough: "なし",
  is_sneeze: "する",
  is_runny_nose: "出る",
  is_dull: "だるくない",
  is_family_illness: "いない",
  attendance: 1,
  student_id: Student.find_by(student_name: "いった").id
)
record1_3 = Record.create!(
  record_at: "2021-07-21",
  body_temperature: 37.1,
  is_cough: "あり",
  is_sneeze: "しない",
  is_runny_nose: "出ない",
  is_dull: "だるい",
  is_family_illness: "いない",
  attendance: 0,
  student_id: Student.find_by(student_name: "いった").id
)
record1_4 = Record.create!(
  record_at: "2021-07-28",
  body_temperature: 35.9,
  is_cough: "なし",
  is_sneeze: "しない",
  is_runny_nose: "出ない",
  is_dull: "だるくない",
  is_family_illness: "いる",
  attendance: 1,
  student_id: Student.find_by(student_name: "いった").id
)
record1_5 = Record.create!(
  record_at: "2021-08-08",
  body_temperature: 36.8,
  is_cough: "なし",
  is_sneeze: "しない",
  is_runny_nose: "出る",
  is_dull: "だるくない",
  is_family_illness: "いる",
  attendance: 1,
  student_id: Student.find_by(student_name: "いった").id
)

record2_1 = Record.create!(
  record_at: "2021-07-07",
  body_temperature: 36.5,
  is_cough: "なし",
  is_sneeze: "する",
  is_runny_nose: "出ない",
  is_dull: "だるい",
  is_family_illness: "いない",
  attendance: 0,
  student_id: Student.find_by(student_name: "たくと").id
)
record2_2 = Record.create!(
  record_at: "2021-07-14",
  body_temperature: 36.8,
  is_cough: "なし",
  is_sneeze: "する",
  is_runny_nose: "出る",
  is_dull: "だるくない",
  is_family_illness: "いる",
  attendance: 1,
  student_id: Student.find_by(student_name: "たくと").id
)
record2_3 = Record.create!(
  record_at: "2021-07-21",
  body_temperature: 37.7,
  is_cough: "あり",
  is_sneeze: "する",
  is_runny_nose: "出ない",
  is_dull: "だるい",
  is_family_illness: "いない",
  attendance: 0,
  student_id: Student.find_by(student_name: "たくと").id
)
record2_4 = Record.create!(
  record_at: "2021-07-28",
  body_temperature: 37.2,
  is_cough: "あり",
  is_sneeze: "しない",
  is_runny_nose: "出ない",
  is_dull: "だるくない",
  is_family_illness: "いない",
  attendance: 0,
  student_id: Student.find_by(student_name: "たくと").id
)
record2_5 = Record.create!(
  record_at: "2021-08-08",
  body_temperature: 36.6,
  is_cough: "なし",
  is_sneeze: "しない",
  is_runny_nose: "出る",
  is_dull: "だるくない",
  is_family_illness: "いない",
  attendance: 1,
  student_id: Student.find_by(student_name: "たくと").id
)

record3_1 = Record.create!(
  record_at: "2021-07-07",
  body_temperature: 36.1,
  is_cough: "なし",
  is_sneeze: "しない",
  is_runny_nose: "出る",
  is_dull: "だるい",
  is_family_illness: "いる",
  attendance: 1,
  student_id: Student.find_by(student_name: "ゆうと").id
)
record3_2 = Record.create!(
  record_at: "2021-07-14",
  body_temperature: 36.2,
  is_cough: "なし",
  is_sneeze: "しない",
  is_runny_nose: "出ない",
  is_dull: "だるくない",
  is_family_illness: "いる",
  attendance: 1,
  student_id: Student.find_by(student_name: "ゆうと").id
)
record3_3 = Record.create!(
  record_at: "2021-07-21",
  body_temperature: 36.3,
  is_cough: "あり",
  is_sneeze: "しない",
  is_runny_nose: "出ない",
  is_dull: "だるくない",
  is_family_illness: "いない",
  attendance: 1,
  student_id: Student.find_by(student_name: "ゆうと").id
)
record3_4 = Record.create!(
  record_at: "2021-07-28",
  body_temperature: 36.9,
  is_cough: "なし",
  is_sneeze: "しない",
  is_runny_nose: "出ない",
  is_dull: "だるくない",
  is_family_illness: "いない",
  attendance: 1,
  student_id: Student.find_by(student_name: "ゆうと").id
)
record3_5 = Record.create!(
  record_at: "2021-08-08",
  body_temperature: 36.5,
  is_cough: "なし",
  is_sneeze: "しない",
  is_runny_nose: "出る",
  is_dull: "だるくない",
  is_family_illness: "いない",
  attendance: 1,
  student_id: Student.find_by(student_name: "ゆうと").id
)

record4_1 = Record.create!(
  record_at: "2021-07-07",
  body_temperature: 36.1,
  is_cough: "なし",
  is_sneeze: "しない",
  is_runny_nose: "出ない",
  is_dull: "だるくない",
  is_family_illness: "いない",
  attendance: 1,
  student_id: Student.find_by(student_name: "やまと").id
)
record4_2 = Record.create!(
  record_at: "2021-07-14",
  body_temperature: 36.4,
  is_cough: "なし",
  is_sneeze: "しない",
  is_runny_nose: "出る",
  is_dull: "だるくない",
  is_family_illness: "いない",
  attendance: 1,
  student_id: Student.find_by(student_name: "やまと").id
)
record4_3 = Record.create!(
  record_at: "2021-07-21",
  body_temperature: 36.4,
  is_cough: "あり",
  is_sneeze: "しない",
  is_runny_nose: "出ない",
  is_dull: "だるくない",
  is_family_illness: "いない",
  attendance: 1,
  student_id: Student.find_by(student_name: "やまと").id
)
record4_4 = Record.create!(
  record_at: "2021-07-28",
  body_temperature: 37.0,
  is_cough: "あり",
  is_sneeze: "しない",
  is_runny_nose: "出ない",
  is_dull: "だるくない",
  is_family_illness: "いない",
  attendance: 0,
  student_id: Student.find_by(student_name: "やまと").id
)
record4_5 = Record.create!(
  record_at: "2021-08-08",
  body_temperature: 36.1,
  is_cough: "なし",
  is_sneeze: "しない",
  is_runny_nose: "出る",
  is_dull: "だるくない",
  is_family_illness: "いる",
  attendance: 1,
  student_id: Student.find_by(student_name: "やまと").id
)

record5_1 = Record.create!(
  record_at: "2021-07-07",
  body_temperature: 36.5,
  is_cough: "なし",
  is_sneeze: "しない",
  is_runny_nose: "出ない",
  is_dull: "だるくない",
  is_family_illness: "いない",
  attendance: 1,
  student_id: Student.find_by(student_name: "こうき").id
)
record5_2 = Record.create!(
  record_at: "2021-07-14",
  body_temperature: 36.6,
  is_cough: "なし",
  is_sneeze: "しない",
  is_runny_nose: "出ない",
  is_dull: "だるい",
  is_family_illness: "いない",
  attendance: 0,
  student_id: Student.find_by(student_name: "こうき").id
)
record5_3 = Record.create!(
  record_at: "2021-07-21",
  body_temperature: 36.9,
  is_cough: "あり",
  is_sneeze: "する",
  is_runny_nose: "出ない",
  is_dull: "だるい",
  is_family_illness: "いない",
  attendance: 0,
  student_id: Student.find_by(student_name: "こうき").id
)
record5_4 = Record.create!(
  record_at: "2021-07-28",
  body_temperature: 37.2,
  is_cough: "あり",
  is_sneeze: "する",
  is_runny_nose: "出る",
  is_dull: "だるい",
  is_family_illness: "いる",
  attendance: 0,
  student_id: Student.find_by(student_name: "こうき").id
)
record5_5 = Record.create!(
  record_at: "2021-08-08",
  body_temperature: 36.3,
  is_cough: "なし",
  is_sneeze: "しない",
  is_runny_nose: "出ない",
  is_dull: "だるくない",
  is_family_illness: "いる",
  attendance: 1,
  student_id: Student.find_by(student_name: "こうき").id
)

# フォロー/フォロワー
Relationship.create!(
  [
    {follower_id: user1.id, followed_id: user2.id},
    {follower_id: user1.id, followed_id: user3.id},
    {follower_id: user1.id, followed_id: user5.id},
    {follower_id: user2.id, followed_id: user1.id},
    {follower_id: user2.id, followed_id: user4.id},
    {follower_id: user2.id, followed_id: user5.id},
    {follower_id: user3.id, followed_id: user1.id},
    {follower_id: user3.id, followed_id: user2.id},
    {follower_id: user3.id, followed_id: user5.id},
    {follower_id: user4.id, followed_id: user3.id},
    {follower_id: user4.id, followed_id: user5.id},
    {follower_id: user4.id, followed_id: user1.id},
    {follower_id: user5.id, followed_id: user3.id},
    {follower_id: user5.id, followed_id: user4.id},
    {follower_id: user5.id, followed_id: user1.id},
  ]
)
