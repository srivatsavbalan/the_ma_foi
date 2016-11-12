json.extract! student, :id, :name, :passout, :course, :college_id, :created_at, :updated_at
json.url student_url(student, format: :json)