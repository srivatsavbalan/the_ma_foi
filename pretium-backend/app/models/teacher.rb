class Teacher < ApplicationRecord
  has_many :ratings
  after_create :create_user
  def self.teacherStatistics
    all_teachers = Teacher.all.includes(:ratings)
    rated_teacher_count = 0
    all_teachers.each do |teacher|
      rated_teacher_count += 1 unless teacher.ratings.empty?
    end
    { 
      rated_teacher_count: rated_teacher_count, 
      unrated_teacher_count: all_teachers.count - rated_teacher_count
    }
  end

  def create_user
    User.create(username: self.name, password: "1234", email: self.email)
  end
end
