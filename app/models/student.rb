class Student < ApplicationRecord
  belongs_to :user
  validates :student_name, presence: true
end
