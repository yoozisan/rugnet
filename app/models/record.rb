class Record < ApplicationRecord
  belongs_to :student
  validates :record_at, presence: true
  validates :body_temperature, presence: true
  validates :attendance, presence: true


  enum is_cough: { なし:false, あり:true }
  enum is_sneeze: { しない:false, する:true }
  enum is_runny_nose: { 出ない:false, 出る:true }
  enum is_dull: { だるくない:false, だるい:true }
  enum is_family_illness: { いない:false, いる:true }
  enum attendance: {欠席:0,　出席:1 }
end
