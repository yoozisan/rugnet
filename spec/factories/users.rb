FactoryBot.define do
  factory :user do
    name {'河合'}
    email {'kawai@kawai.com'}
    password {'password'}
    admin {true}
  end
  factory :user2 ,class: User do
    name {'塚原'}
    email {'tukahara@tukahara.com'}
    password {'password2'}
    admin {false}
  end
  factory :user3 ,class: User do
    name {'中嶋'}
    email {'nakajima@nakajima.com'}
    password {'password3'}
    admin {false}
  end
end
