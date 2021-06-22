FactoryBot.define do
  factory :post do
    title {'今日は誕生日'}
    content {'沢山の人に祝ってもらった。'}
  end
  factory :post2,class: Post do
    title {'母の日'}
    content {'子供からのプレゼントに感動。'}
    association :user, factory: :user2
  end
  factory :post3,class: Post do
    title {'明日の練習'}
    content {'アジリティの練習が楽しそうだった。'}
    association :user, factory: :user3
  end
end
