class Skill < ApplicationRecord
  belongs_to :skills_sub_category
  has_many :ratings
  # belongs_to :students, through: :ratings
  has_many :request_raings
  def self.skillStatistics 
    skillsVsScore = {}
    Skill.all.includes(:ratings).each do |skill| 
      skillsVsScore[skill.name] = skill.ratings.count 
    end  
    skillsVsScore  
  end
end
