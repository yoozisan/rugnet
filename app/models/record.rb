class Record < ApplicationRecord
  belongs_to :student
  validates :record_at, presence: true
  validates :body_temperature, presence: true
  validates :attendance, presence: true


  enum is_cough: { ❌:false, ⭕️:true }
  enum is_sneeze: { ❌:false, ⭕️:true }
  enum is_runny_nose: { ❌:false, ⭕️:true }
  enum is_dull: { ❌:false, ⭕️:true }
  enum is_family_illness: { ❌:false, ⭕️:true }

end
