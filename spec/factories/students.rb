FactoryBot.define do
  factory :student do
    student_name { 'むさし' }
  end
  factory :student2,class: Student do
    student_name { 'こじろう' }
    association :user, factory: :user2

  end
  factory :student3,class: Student do
    student_name { 'またはち' }
    association :user, factory: :user3
  end
end
