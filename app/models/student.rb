class Student < ApplicationRecord
  belongs_to :user
  validates :student_name, presence: true
  enum category: { A: 1, B: 2, C: 3, D: 4}
  enum school_year: { "1年生": 1, "2年生": 2, "3年生": 3, "4年生": 4, "5年生": 5, "6年生": 6}
end
