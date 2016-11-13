json.extract! request_rating, :id, :student_id, :skill_id, :teacher_id, :status, :created_at, :updated_at
json.url request_rating_url(request_rating, format: :json)