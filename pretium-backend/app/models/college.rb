class College < ApplicationRecord
  has_many :students
  has_many :teachers
  # has_many :ratings, through: :teachers
end
