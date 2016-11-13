class Skill < ApplicationRecord
  belongs_to :skills_sub_category
  # belongs_to :students, through: :ratings
  has_many :request_raings
end
