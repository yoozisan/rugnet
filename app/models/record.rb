class Record < ApplicationRecord
  belongs_to :student
  validates :record_at, presence: true
  validates :body_temperature, presence: true
  validates :attendance, presence: true

  enum is_dull: { ❌:false, ⭕️:true }
end
