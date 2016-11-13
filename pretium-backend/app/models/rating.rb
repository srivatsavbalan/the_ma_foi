class Rating < ApplicationRecord
  belongs_to :student
  belongs_to :teacher
  belongs_to :skill
  # belongs_to :college, through: :teachers
end
