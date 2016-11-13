class SkillsSubCategory < ApplicationRecord
  has_many :skills
  belongs_to :skills_category
end
