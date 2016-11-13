class Rating < ApplicationRecord
  belongs_to :student
  belongs_to :teacher
  belongs_to :skill
  def self.threshold_to_display
    30
  end
  # belongs_to :college, through: :teachers
end
