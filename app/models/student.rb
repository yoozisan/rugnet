class Student < ApplicationRecord
  belongs_to :user
  has_many :records, dependent: :destroy
  validates :student_name, presence: true
  enum category: { A: 0, B: 1, C: 2, D: 3}
  enum school_year: {幼児: 0, "1年生": 1, "2年生": 2, "3年生": 3, "4年生": 4, "5年生": 5, "6年生": 6}
end
