class Rating < ApplicationRecord
  belongs_to :student
  belongs_to :teacher
  belongs_to :skill
  def self.threshold_to_display
    30
  end
  def self.ratingStatistics
    all_students = Student.all.includes(:ratings)
    rated_student_count = 0
    all_students.each do |student|
      rated_student_count += 1 unless !student.ratings.empty?
    end
    { 
      rated_student_count: rated_student_count, 
      unrated_student_count: all_students.count - rated_student_count
    }
  end
end
