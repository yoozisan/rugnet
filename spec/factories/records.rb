FactoryBot.define do
  factory :record do
    record_at { '2021-06-21' }
    body_temperature { 36.5}
  end
  factory :record2,class: Record do
    record_at { '2021-07-21' }
    body_temperature { 37.0}
    association :student, factory: :student2
  end
  factory :record3,class: Record do
    record_at { '2021-08-21' }
    body_temperature { 36.1}
    association :student, factory: :student3
  end
end
