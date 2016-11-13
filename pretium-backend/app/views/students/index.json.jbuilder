unless @teacher
  json.students do
    json.array! @students, partial: 'students/student', as: :student
  end
else
  json.array! (@students) do |student|
    json.partial! student, partial: 'students/student', as: :student
    unless student.ratings.where(teacher_id: @teacher.id).empty?
      json.isRated = true
    end
  end
end